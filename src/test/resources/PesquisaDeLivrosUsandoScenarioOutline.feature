Feature: Pesquisa de Livros usando o Esquema de Cenário Motivação

  # a escrita de cenários onde se tem a variação apenas de valores pode ser realiada através de Scenario Outline
  # dessa forma acaba sendo menos verboso e tornando mais legível
  # abaixo temos 4 cenários que foram traduzidos em apenas 1 scenario template

  # scenario1
#  Scenario: Pesquisa de Livros usando o Esquema de Cenário Motivação
#    Given Que a minha biblioteca esta inicializada
#    And Que o total de livros carregados e' 10
#    When Eu pesquiso o livro "Effective Java" e o topico COMPUTACAO
#    Then Eu encontro o livro "Effective Java"

  # scenario2
#  Scenario: Pesquisa de Livros usando o Esquema de Cenário Motivação
#    Given Que a minha biblioteca esta inicializada
#    And Que o total de livros carregados e' 10
#    When Eu pesquiso o livro "Design Pattern" e o topico COMPUTACAO
#    Then Eu encontro o livro "Design Pattern"

  # scenario3
#  Scenario: Pesquisa de Livros usando o Esquema de Cenário Motivação
#    Given Que a minha biblioteca esta inicializada
#    And Que o total de livros carregados e' 10
#    When Eu pesquiso o livro "Dune" e o topico SCI_FI
#    Then Eu encontro o livro "Dune"

  # scenario4
#  Scenario: Pesquisa de Livros usando o Esquema de Cenário Motivação
#    Given Que a minha biblioteca esta inicializada
#    And Que o total de livros carregados e' 10
#    When Eu pesquiso o livro "One Hundred Years Of Solitude" e o topico ROMANCE
#    Then Eu encontro o livro "One Hundred Years Of Solitude"

    # Trabalhando com Esquemas de Cenários/ Scenario Outline, mais legível e menos verboso

  Scenario Outline: Pesquisa dos livros dado o título e tópico
    Given Que a minha biblioteca esta inicializada
    And Que o total de livros carregados e' 10
    When Eu pesquiso o livro com o <titulo> e tópico <topico>
    Then Eu encontro o livro <titulo>

    Examples:
      | titulo                          | topico     |
      | "Effective Java"                | COMPUTACAO |
      | "Design Patterns"               | COMPUTACAO |
      | "Dune"                          | SCI_FI     |
      | "One Hundred Years Of Solitude" | ROMANCE    |
