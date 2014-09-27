Feature: single digit additions

  Scenario: single digit additions of 2 + 4
    Given I set First operand as "1"
    And I set Second operand as "2"
    And I press "+"
    Then I should get result as "3"

  Scenario: single digit additions of 5 + 6
    Given I set First operand as "5"
    And I set Second operand as "6"
    And I press "+"
    Then I should get result as "12"

  Scenario: single digit additions of 8 + 0
    Given I set First operand as "8"
    And I set Second operand as "0"
    And I press "+"
    Then I should get result as "8"
