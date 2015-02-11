Feature: triple digit additions

  @test
  Scenario: triple digit additions of two numbers
    Given I set First operand as "333"
    And I set Second operand as "333"
    And I press "+"
    Then I should get result as "666"


  @test
  Scenario: triple digit additions of two numbers
    Given I set First operand as "300"
    And I set Second operand as "300"
    And I press "+"
    Then I should get result as "600"