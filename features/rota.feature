Feature: Busca de rotas
  Como um usuário do sistema
  Eu quero buscar as rotas que um ônibus já percorreu informando sua placa
  Para que eu saiba por onde cada ônibus da frota já passou

  Scenario: Busca de rotas de um ônibus válido
    Given que existem dados de rotas registrados no sistema
    And um ônibus com a placa "ABC-1234" já percorreu algumas rotas
    When eu informo a placa do ônibus como "ABC-1234"
    Then o sistema exibe a lista de rotas percorridas pelo ônibus


