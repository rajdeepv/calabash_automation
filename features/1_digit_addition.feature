Feature: single digit additions

  @test
  Scenario: single digit additions of 1 + 1
    Given I set First operand as "1"
    And I set Second operand as "1"
    And I press "+"
    Then I should get result as "2"

  @test
  Scenario: single digit additions of 2 + 2
    Given I set First operand as "2"
    And I set Second operand as "2"
    And I press "+"
    Then I should get result as "4"