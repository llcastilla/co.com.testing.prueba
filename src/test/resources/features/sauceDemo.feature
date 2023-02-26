@stories
Feature: Academy Choucair
  As a user, I want to learn how to automate in screamplay at the Choucair Academy with the automation course

  @scenario1
  Scenario: Search for a automation course
    Given than Brandon wants to learn automation at the academy Choucair
      | strUser       | strPassword  |
      | standard_user | secret_sauce |
    When  he searchs for the course on the Choucair Academy plataform
      | strFirstName | strLastName | strPostalCode |
      | leonardo     | castilla    | 200005        |
    Then  He finds the course called
      | strProduct               |
      | THANK YOU FOR YOUR ORDER |