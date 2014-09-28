Feature: seven digit additions

  Scenario: seven digit additions of two numbers
    Given I set First operand as "7777777"
    And I set Second operand as "1"
    And I press "+"
    Then I should get result as "7777778"
