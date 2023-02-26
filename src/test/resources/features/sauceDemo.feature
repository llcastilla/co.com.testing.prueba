@stories
Feature: Sauce Demo

  Como usuario quiero aprender a automatizar en screamplay en la pagina Sauce Demo
  @scenario1
  Scenario: Buscar un producto para comprar
    Given que Brandon quiere aprender automatización con saucedemo
      | strUser       | strPassword  |
      | standard_user | secret_sauce |
    When  busca el producto que quiere comprar
      | strFirstName | strLastName | strPostalCode |
      | leonardo     | castilla    | 200005        |
    Then  finaliza la compra
      | strProduct               |
      | THANK YOU FOR YOUR ORDER |