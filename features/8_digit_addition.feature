Feature: Triple digit additions

  @test
  Scenario: triple digit additions of 102 + 102
    Given I set First operand as "102"
    And I set Second operand as "102"
    And I press "+"
    Then I should get result as "204"

  @test
  Scenario: triple digit additions of 500 + 500
    Given I set First operand as "500"
    And I set Second operand as "500"
    And I press "+"
    Then I should get result as "1000"