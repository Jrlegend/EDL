
# Introdução

**Ruby**, tornado público em 1995, é uma linguagemque possui como objetivo e diferencial sua simplicidade, expressividade,legibilidade e redigibilidade ou seja, possui facilidade tanto em sua leitura quanto em sua escrita, se tornando uma programação simples e ao mesmo tempo com uma estrutura complexa devido as várias funcionalidades que possui. Ela parte do conceito de que tudo é um objeto, possuindo particularidades e ações relacionadas a eles.

# Origens e Influências

O Ruby teve seu nascimento no ano de **1993**, mas foi apresentado ao público em 1995 por **"Matz" (Yukihiro Matsumoto)**, seu criador. Teve origem a partir de algumas linguagens favoritas de Matz: **Perl, Smalltalk, Eiffel, Ada e Lisp**. Matz buscava uma linguagem que fosse mais poderosa que *Perl* e mais orientada a objetos que a linguagem *Python* (e por conta disso possui grande similaridade com essa última em diversos aspectos, como a orientação a objetos mais abrangente).

Desde sua apresentação ao mundo em 1995, O *Ruby* angariou diversos programadores por conta de sua simplicidade e poder de desenvolvimento, se tornando uma das linguagens que mais cresce no mercado de acordo com o índice *TIOBE*, a qual consta em **11º lugar em seu ranking de popularidade** (Jun /2017).

Em 1999 lançou-se a versão 1.3 da linguagem, e junto a esta iniciou-se o **Ruby-Talk** que é uma lista de discussão sobre *Ruby*. Isso fez com que aumentasse a popularidade da linguagem fora do Japão. Tanto que um ano após, **em 2000 foi lançado o primeiro livro sobre a programação Ruby** , *Programming Ruby*, o qual inicialmente foi pago e depois disponibilizado para o público em geral.

Mais tarde, em 2005 surgiu o **Ruby on Rails**, framework de aplicações web desenvolvido em *Ruby*, o qual alavancou ainda mais o crescimento da linguagem no mercado, sendo aliás o principal motivo de crescimento dela para desenvolvedores de aplicações web. Inclusive o *Ruby on Rails* é constantemente confundido com a linguagem *Ruby* por iniciantes na linguagem.

Sua versão mais atual estável é a 2.3.1, lançada em 26/4/2016.

# Classificação 

**Ruby é uma linguagem de programação:

* Interpretada 
	* *Linguagem interpretada é uma linguagem de programação em que o código fonte nessa linguagem é executado por um programa de computador chamado interpretador, que em seguida é executado pelo sistema operacional ou processador.* (Wikipedia)

* Orientada a objetos
	* *Linguagem orientada a objetos é uma linguagem de programação em que existem "objetos" com suas próprias características, funcionalidades e particularidades.*

* Multiparadigma

* Tipagem forte e dinâmica
	* *Tipagem forte significa que haverá a verificação do tipo da variável em tempo de execução, em todas as linhas. Dinâmica refere-se que há a possibilidade de alteração do tipo da variável em tempo de execução*

Similar ao *Smalltalk* pois uma de suas origens foi a mesma, **tudo em *Ruby* é um objeto**. Segundo o próprio site oficial de *Ruby*: *"Cada parcela de informação e código podem receber as suas próprias propriedades e ações. A Programação orientada a objetos denomina as propriedades como variáveis de instância e as ações como métodos. "*. Tanto char, int, float, double e outros tipos de variáveis as quais em outras linguagens não seriam em objetos, em *Ruby* as mesmas são. 
Outro principal ponto da linguagem Ruby é sua Flexibilidade,** a qual permite que seus programadores alterem partes da linguagem, redefinindo-as, acrescentando-as ou até removendo as mesmas**. Em quesito algum o *Ruby* tenta restringir o programador, sendo um ponto diferencial da linguagem.

# Expressividade Ruby x Java

*Ruby* é demasiadamente mais expressivo que todas as linguagens do mercado, inclusive a linguagem *Java*. Mesmo ambas sendo orientadas a objeto, como *Ruby* é similar a *Smalltalk* em que tudo é um objeto, a forma de criação de funcionalidades se torna muito mais prática.
No exemplo a seguir iremos utilizar o conceito de redefinição de operadores do ruby:

```ruby
class Fixnum
  def +(value)
    self - value
  end
end
```
O exemplo acima demonstra a capacidade do ruby de modificar operadores, tornando a vida do programador mais fácil dependendo de seu uso.De modo mais formal,o trecho de código acima modifica uma classe preexistente no *Ruby* e efetua a reescrita do sinal de '+' por '-'. Caso executasse o trecho de código:
```ruby
puts 8 + 7 
```
Ao invés do resultado ser "15" ele seria "1", pois na definição da função + ele subtrairia por conta do def. Explicando com outras palavras seria chamar a função "+" da variável implícita com valor 8, passando 7 como parâmetro. Tal funcionalidade não existe na linguagem *Java*, e a mesma pode ser explorada de diversas maneiras diferentes tornando mais fácil a vida do programador *Ruby*

# Avaliação Comparativa

Como descrito no item acima, a notação do Ruby é a mais simples possível de se mostrar. Até em exemplos mais complexos como abaixo é algo simples tanto em questão da legibilidade quanto da redigibilidade:

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

  def to_s 
    "#{@nome} (#{@idade} anos)"
  end
end
 
pessoas = [
            Pessoa.new("Ricardo", 19),
            Pessoa.new(idade = 25)
          ]
 
puts pessoas[0]
puts pessoas[1]
puts pessoas[0] > pessoas[1] 
```
O código acima (retirado como exemplo no Wikipedia¹) cria uma classe `Pessoa` que possui dois atributos: `nome` e `idade`. O construtor da mesma cria um Objeto com nome `"Desconhecido"` e idade não definida (uma espécie de sobrecarga). 

Após ela cria uma modificação no código *Ruby* no qual define a função `>` para um comparativo de objetos da classe `Pessoa` que retorna true se a idade do objeto que chama essa função é maior que a do  objeto parâmetro.

Após isso ela também define o método `to_s` para formatar melhor a saída. 

Para finalizar ela cria dois objetos do tipo pessoa, um com nome e idade e outro apenas com a idade (recebendo o nome `"Desconhecido"`), imprime os dados dos mesmos e usa a função `>` para compara-los.

Para criar o código em *Java*, seria muito mais complexo e não teríamos o mesmo tipo de execução. Dado exemplo abaixo é possível perceber que a implementação da mesma não é prática e não possui os mesmos níveis de manipulação de objetos que em *Ruby*, além de que o código em Java é muito maior e em determinadas funções (como o `def` de Ruby) não é possível obter efeito igual em *Java*, sendo necessário uma adaptação do mesmo para determinar uma saída similar:

Classe pessoa
```java
public Class Pessoa{
  String nome;
  int idade;
  public Pessoa(String nome, int idade){
    this.idade=idade;
    this.nome=nome;
  }
  public Pessoa(int idade){
    this.idade=idade;
    this.nome="Desconhecido";
  }
  int getIdade(){
    return idade; 
  }
  void setIdade (int idade){
    this.idade = idade;

  }
  String getNome(){
    return nome;
  }
  void setNome(String nome){
    this.nome=nome;
  }
  boolean maior (Pessoa pessoa){
    if (this.idade> pessoa.getIdade())
      return true;
    else
      return false;
  }
  void mostraPessoa(){
    System.out.println(getNome()+"("+getIdade+" anos)");
  }

}

```

Classe principal
```java
public class principal {
	public static void main(String args[]) {
		Pessoa p [] = new Pessoa[2];
    p[1] = new Pessoa ("Ricardo",19);
    p[2] = new Pessoa (25);
    p[1].mostraPessoa();
    p[2].mostraPessoa();
    System.out.println (p[1].maior(p[2]).toString());
	}
}
```

# Conclusão

Vale salientar que *Ruby* por si só não é independente em termos de programação (principalmente para Web), sendo uma espécie de "corpo" dos frameworks (Rails, Sinatra,Grape, entre outros). É demasiadamente complicado citar a linguagem sem seus frameworks, sendo que a maioria se concentra apenas no *RoR (Ruby on Rails)*.

Em observação aos exemplos, trajetória e codificação do *Ruby* definidos ao longo do artigo, é possível dizer que *Ruby* é uma linguagem que consegue cumprir seus principais objetivos (tanto em expressividade, quanto em flexibilidade), sendo mais bem sucedida que seus antecessores, e é muito mais amigável que o *Java* em termos de criação de objetos e funcionalidades dos mesmos. 

É nítido pelos exemplos supracitados, que a criação e manipulação de objetos em *Ruby* é muito mais simples tanto de ser entendida quanto de ser escrita, pois mesmo que em *Java* ou outras linguagens, devido as suas enormes gamas de funções e bibliotecas consigam executar diversos tipos de funcionalidades presentes em *Ruby*, elas não podem modificar por exemplo, o *core* da linguagem como acontece em *Ruby*. Isso torna o trabalho de mostrar dados simples em algo trabalhoso ou até inviável em termos de manipulação. 

Ademais, tal liberdade mostra o quanto essa linguagem pode crescer, e junto com o framework *Ruby on Rails* ficar entre as mais populares do mercado de desenvolvimento Web, sendo forte concorrente do *Java/jsf* por conta da facilidade de obter informações e mostra-las no front-end. 




# Referências
https://www.ruby-lang.org/pt/about/ (Site oficial do Ruby em pt-br)

http://tryruby.org (Primeiros passos para entender Ruby)

https://www.caelum.com.br/apostila-ruby-on-rails/ (Apostila de Ruby on Rails da Caelum)

¹https://pt.wikipedia.org/wiki/Ruby_(linguagem_de_programação) (História do Ruby e código do exemplo ¹)

http://blog.locaweb.com.br/artigos/metaprogramacao-com-ruby-como-mudar-o-comportamento-da-linguagem/ (Mudando comportamento da Linguagem Ruby)

https://learnrubythehardway.org/book/ex32.html (Loops e Arrays em Ruby)

http://www.guj.com.br/t/como-criar-e-inicializar-um-array-de-objetos/68081 (Java)



