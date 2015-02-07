Feature: eight digit additions

  @test
  Scenario: eight digit additions of two numbers 88888888 + 88888888
    Given I set First operand as "88888888"
    And I set Second operand as "88888888"
    And I press "+"
    Then I should get result as "177777776"

