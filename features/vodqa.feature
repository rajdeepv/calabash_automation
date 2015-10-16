Feature: In order to take a note
  As a user
  I should be able to save a new note

  Scenario: new note
    Given I enter invalid credentials
    When I log-in
    Then I should see error message