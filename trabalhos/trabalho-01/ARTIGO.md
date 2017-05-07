(Não é necessário seguir a estrutura a seguir...)

# Introdução

**Ruby** é uma linguagem que prima pela simplicidade e expressividade de deus códigos ou seja, possui facilidade tanto em sua leitura quanto em sua escrita, se tornando uma programação simples e ao mesmo tempo complexa em sua estrutura devido as várias funcionalidades que possui. Além disso, é uma linguagem em que tudo é um objeto, tendo suas próprias propriedades e ações.

# Origens e Influências

O Ruby teve seu nascimento no ano de 1993, e foi apresentado ao público em 1995 por **"Matz" (Yukihiro Matsumoto)**, seu criador. Teve origem a partir das linguagens favoritas de Matz, que são **Perl, Smalltalk, Eiffel, Ada e Lisp**. Matz buscava uma linguagem que fosse mais poderosa que *Perl* e mais orientada a objetos que a linguagem *Python* (por conta disso possui grande similaridade com essa última em diversos aspectos).

Desde sua apresentação ao mundo em 1995, O *Ruby* angariou diversos programadores por conta de sua simplicidade e poder de desenvolvimento, se tornando uma das linguagens que mais cresce no mercado como no índice *TIOBE*, a qual consta em **12º lugar em seu ranking de popularidade**.

Em 1999 lançou-se a versão 1.3 da linguagem, e junto a esta iniciou-se o **Ruby-Talk** que é uma lista de discussão sobre *Ruby*. Isso fez com que aumentasse a popularidade da linguagem fora do Japão. Tanto que um ano após, **em 2000 foi lançado o primeiro livro sobre a programação Ruby** , *Programming Ruby*, o qual inicialmente foi pago e depois disponibilizado para o público em geral.

Mais tarde, em 2005 surgiu o **Ruby on Rails**, framework de aplicações web desenvolvido em *Ruby*, o qual alavancou ainda mais o crescimento da linguagem no mercado, sendo aliás o principal motivo de crescimento dela para desenvolvedores de aplicações web. Inclusive o *Ruby on Rails* é constantemente confundido com a linguagem *Ruby* por iniciantes na linguagem.

Sua versão mais atual estável é a 2.3.1, lançada em 26/4/2016.

# Classificação

**Ruby é uma linguagem de script orientada a objetos, multiparadigma com tipagem dinâmica e forte**. Similar ao *Smalltalk* pois uma de suas origens foi a mesma, tudo em *Ruby* é um objeto. Segundo o próprio site oficial de *Ruby*: *"Cada parcela de informação e código podem receber as suas próprias propriedades e ações. A Programação orientada a objetos denomina as propriedades como variáveis de instância e as ações como métodos. "*. Tanto char, int, float, double e outros tipos de variáveis as quais em outras linguagens não seriam em objetos, em *Ruby* as mesmas são. 
Outro principal ponto da linguagem Ruby é sua Flexibilidade,** a qual permite que seus programadores alterem partes da linguagem, redefinindo-as, acrescentando-as ou até removendo as mesmas**. Em quesito algum o *Ruby* tenta restringir o programador, sendo um ponto diferencial da linguagem.

# Expressividade Ruby x Java

*Ruby* é demasiadamente mais expressivo que todas as linguagens do mercado, inclusive *Java*. Mesmo ambas sendo orientadas a objeto, como *Ruby* é similar a *Smalltalk* tudo é um objeto a forma de criação de funcionalidades se torna muito mais prática.
No exemplo a seguir iremos criar uma array de int e organiza-la de forma crescente:

```ruby
array = [4,65,2,293,7,18,4029,25,30]
array.sort!
array.each do |numero|
  puts numero
end
```

O uso de "!" na função sort da array força a variável array a guardar o resultado de sua função. é chamado de **bang**. Em *Java*, para fazermos o codigo acima, precisariamos criar uma função para manipular a array (que é um objeto em ambas). O que torna o código *Ruby* muito mais simples de se expressar. Outro exemplo de diferencial do *Ruby* para *Java* seria o seguinte trecho:

```ruby
class Fixnum
  def +(value)
    self - value
  end
end
```
O qual expõe a flexibilidade da linguagem conforme citado anteriormente. O trecho de código acima modifica uma classe preexistente no *Ruby* e troca o sinal de + por -. Caso executasse o trecho de código:
```ruby
puts 8 + 7
```
Ao invés do resultado ser "15" ele seria "1", pois na definição da função + ele subtrairia por conta do def. Explicando com outras palavras seria chamar a função "+" da variável implícita com valor 8, passando 7 como parâmetro.

# Avaliação Comparativa

Como descrito no item acima, a notação do Ruby é a mais simples possível de se mostrar. Até em exemplos mais complexos como abaixo é algo simples tanto de ler quanto de escrever:

```ruby
class Pessoa
  attr_reader :nome, :idade
 
  def initialize(nome = "Desconhecido", idade)
    @nome, @idade = nome, idade
  end
 
  def >(pessoa)
    if self.idade > pessoa.idade
      return true
    else
      return false
    end
  end

  def to_s # Método usado pelo método puts() para formatar a saída
    "#{@nome} (#{@idade} anos)"
  end
end
 
pessoas = [
            Pessoa.new("Ricardo", 19),
            Pessoa.new(idade = 25)
          ]
 
puts pessoas[0]
puts pessoas[1]
puts pessoas[0] > pessoas[1] # O mesmo que: pessoas[0].>(pessoas[1])
```
O código acima (retirado como exemplo no Wikipedia¹) cria uma classe Pessoa que possui dois atributos: nome e idade. O construtor da mesma cria um Objeto com nome "Desconhecido" e idade não definida. 

Após ela cria uma modificação no código *Ruby* no qual define a função ">" para um comparativo de objetos da classe Pessoa que retorna true se a idade do objeto que chama essa função é maior que a do  objeto parâmetro.

Após isso ela também define o método to_s para formatar melhor a saída. 

Para finalizar ela cria dois objetos do tipo pessoa, um com nome e idade e outro apenas com a idade (recebendo o nome "Desconhecido"), imprimi os dados dos mesmos e usa a função ">" para compara-los.

Para criar o código em java

# Conclusão
