Feature: double digit additions

  Scenario: single digit additions of 10 + 22
    Given I set First operand as "10"
    And I set Second operand as "22"
    And I press "+"
    Then I should get result as "32"

  Scenario: single digit additions of 55 + 45
    Given I set First operand as "55"
    And I set Second operand as "45"
    And I press "+"
    Then I should get result as "100"