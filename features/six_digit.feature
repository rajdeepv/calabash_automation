Feature: six digit additions

  Scenario: six digit additions of two numbers
    Given I set First operand as "666666"
    And I set Second operand as "1"
    And I press "+"
    Then I should get result as "666667"