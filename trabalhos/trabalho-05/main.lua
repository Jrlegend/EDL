function love.load ()
  p2 = { x=350, y=550, w=100, h=10 }
	p3 = { x=400, y=250, w=10, h=10, vy=-190,vx = 1}
  
  -- 1º Exemplo
  -- Nome: Variável "y"
	-- Propriedade: Valor
	-- Binding Time: Compilação
	-- Explicação: O valor "y" da linha 3 é atribuído em tempo de compilação, não sendo alterado durante sua execução
  a = {}
    for i=1, 6 do

    -- 2º Exemplo
    -- Nome: Reserved "for"
	  -- Propriedade: Sintaxe
	  -- Binding Time: Design
	  -- Explicação: A palavra reservada "for" foi definida como palavra reservada durante o tempo de design do lua, 
    -- e define um iteração com condição, comparação e incremento (estes dois últimos implícitos).
    
		a[i]={}
		for j=1,14 do
           a[i][j] = { x=j*50, y=i*30, w=30, h=10}
            
		end
    end
	
	isPressed=0
  
  -- 3º Exemplo
  -- Nome: Variável "isPressed"
	-- Propriedade: Endereço
	-- Binding Time: Compilação
	-- Explicação: A variável "isPressed" tem seu endereço definido em tempo de compilação. A mesma é global.
  
	val = 0
	
	
end

function love.keypressed (key)
    if key == 'left' then
        if isBorderLeft(p2) then
			p2.x = p2.x - 5
		end	
    elseif key == 'right' then
        if isBorderRight(p2) then
			p2.x = p2.x + 5
		end	
	elseif key == 'space' then
        if isPressed==0 then
			isPressed=1
	end	
    elseif key == 'a' and isPressed==0 then
		love.load()
	end
end
function isBorderDown(o)
	return (o.y>=610)
end
function isBorderLeft(o)
	return (o.x>=5)
end

function isBorderRight(o)
	return (o.x+o.w<=800)
end

function isBorderTop(o)
	return (o.y>=0)
end

function collides (o1, o2)
	
	-- 4º Exemplo
        -- Nome: variável "o1"
	-- Propriedade: Endereço
	-- Binding Time: Execução
	-- Explicação: o1, sendo uma variável local, tem seu endereço definido em tempo de execução.
	
    return (o1.x+o1.w >= o2.x) and (o1.x <= o2.x+o2.w) and
           (o1.y+o1.h >= o2.y) and (o1.y <= o2.y+o2.h)
end

function collidesX (o1, o2)
    return (o1.x+o1.w >= o2.x) and (o1.x <= o2.x+o2.w) 
end

function collidesY (o1, o2)
    return (o1.y+o1.h >= o2.y) and (o1.y <= o2.y+o2.h)
    
    
    
end

function love.update (dt)
    if isPressed==1 then
		p3.y = p3.y - p3.vy*dt
		p3.x = p3.x + p3.vx*dt
		if isBorderLeft(p3)==false or isBorderRight(p3)==false  then
			p3.vx=p3.vx*(-1)
		end	
		if isBorderTop(p3)==false then
			p3.vy=p3.vy*(-1)
		end
	end
	
	if love.keyboard.isDown("left") then
		if isBorderLeft(p2) then
			if love.keyboard.isDown("lshift") then
				p2.x = p2.x - 20
			else
				p2.x = p2.x - 5
			end
		end	
    end
	if love.keyboard.isDown("right") then
        if isBorderRight(p2) then
			if love.keyboard.isDown("lshift") then
				p2.x = p2.x + 20
			else
				p2.x = p2.x + 5
			end
		end
    end
	
    if collides(p2, p3) then
		if collidesX(p2,p3) then
			p3.vx=(10*(p3.x-((p2.w/2)+p2.x)))
			if ((p2.x+(p2.w/2)<p3.x+p3.w) and p3.vx<0) or ((p2.x+(p2.w/2)>p3.x+p3.w) and p3.vx>0) then
				p3.vx=(-1)*p3.vx
			end
		elseif	collidesY(p2,p3) then
    
    -- 5º Exemplo
    -- Nome: Reserved "elseif"
	  -- Propriedade: Semântica
	  -- Binding Time: Design
	  -- Explicação: A palavra "elseif" foi definida como palavra reservada durante o tempo de design do lua, 
    -- e define uma atribuição a ser utilizada fora da função. A mesma será executada caso a condição 
    -- precedente não entre e a sua própria acabe entrando
    
			p3.vx=p3.vx*(-1)
		end
		p3.vy=p3.vy*(-1.01)
	
     
        
		
    end
	
	for i=1, 6 do
		for j=1, 14 do
			if collides(a[i][j], p3) then
				if	collidesX(a[i][j],p3) then
					p3.vy=p3.vy*(-1.01)
				elseif collidesY(a[i][j],p3) then
					p3.vx=p3.vx*(-1)
					p3.vy=p3.vy*(1.01)
				end
				a[i][j].x=0
				a[i][j].y=0
				a[i][j].w=0
				a[i][j].h=0
				val=val+1
				
				-- 6º Exemplo
        			-- Nome: variável "val"
				-- Propriedade: Valor
				-- Binding Time: Execução
				-- Explicação: o valor val será incrementado em 1 conforme o as colisões acontecem, 
				-- em tempo de execução.
				
				
			end
		end
	end
	

end

function love.draw ()
    love.graphics.setBackgroundColor( 0, 150, 0, 255 )
    love.graphics.setColor(0,0 , 0, 255)
	love.graphics.rectangle('fill', p2.x,p2.y, p2.w,p2.h)
    love.graphics.rectangle('fill', p3.x,p3.y, p3.w,p3.h)
	love.graphics.setColor(255, 255, 255, 255)
    love.graphics.print("Pontuação: "..val, 50, 570, 0, 1.2, 1.2)
	love.graphics.print("Quadrados Restantes: ".. 84-val, 250, 570, 0, 1.2, 1.2)
	love.graphics.print("Velocidade: ".. math.floor(p3.vy), 500, 570, 0, 1.2, 1.2)
        

	for i=1, 6 do
		for j=1, 14 do
			love.graphics.rectangle('fill', a[i][j].x,a[i][j].y, a[i][j].w,a[i][j].h)
		end
	end
	if isBorderDown(p3) then
		isPressed=0
		love.graphics.print("Pontuação: "..val, 325, 250, 0, 1.2, 1.2)
		love.graphics.print("GAME OVER!", 330, 300, 0, 1.2, 1.2)
		love.graphics.print("Pressione a letra A para recomeçar", 250, 320, 0, 1.2, 1.2)
	end
		if val==84 then
		isPressed=0
		love.graphics.print("Parabéns, voce ganhou !!!! Pressione a letra A para recomeçar", 150, 320, 0, 1.2, 1.2)
	end

end
