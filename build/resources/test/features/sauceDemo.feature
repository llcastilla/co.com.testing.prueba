@stories
Feature: Academy Choucair
  As a user, I want to learn how to automate in screamplay at the Choucair Academy with the automation course

  @scenario1
  Scenario: Search for a automation course
    Given que Brandon quiere aprender automatización con saucedemo
      | strUser       | strPassword  |
      | standard_user | secret_sauce |
    When  busca el producto que quiere comprar
      | strFirstName | strLastName | strPostalCode |
      | leonardo     | castilla    | 200005        |
    Then  finaliza la compra
      | strProduct               |
      | THANK YOU FOR YOUR ORDER |