# Para adicionar comentários devemos usar o sinal #

  #Titulo da feature
  Feature: Pesquisa de livros na minha biblioteca

    # Palavras chaves adicionais -> `E`, `MAS`

    # A tag Background executa antes dos cenários
    Background:
      Given Que a minha biblioteca esta inicializada
      And Que o total de livros carregados e' 10

    Scenario: Pesquisa de um livro dado o titulo
      When Eu pesquiso o livro "Effective Java"
      Then Eu encontro esse livro

    Scenario: Pesquisa de um livro dado o titulo
      When Eu pesquiso o livro "Java"
      Then Eu não encontro esse livro

    Scenario: Pesquisa do topico mais popular
      When Eu pesquiso o topico mais popular
      Then Eu encontro o topico COMPUTACAO
      But Eu não encontro o tópico SCI_FI
      But Eu não encontro o tópico FINANCAS
      But Eu não encontro o tópico ROMANCE
