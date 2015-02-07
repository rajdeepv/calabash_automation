Feature: eight digit additions

  @test
  Scenario: eight digit additions of two numbers
    Given I set First operand as "88888888"
    And I set Second operand as "1"
    And I press "+"
    Then I should get result as "88888889"
