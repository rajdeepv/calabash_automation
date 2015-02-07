Feature: four digit additions

  @test
  Scenario: five digit additions of two numbers
    Given I set First operand as "55555"
    And I set Second operand as "55555"
    And I press "+"
    Then I should get result as "111110"