Feature: In order to take a note
  As a user
  I should be able to save a new note

  Scenario: new note
    Given I am on login screen
    When I enter invalid credentials
    And I log-in
    Then I should see error message