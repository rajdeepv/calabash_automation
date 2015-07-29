Feature: In order to take a note
  As a user
  I should be able to save a new note

  Scenario: new note
    Given I start creating a new category
    When I select "Note"
    And I note down "hello nakal"
    And I save my note
    Then I should see "hello nakal" as one of my note