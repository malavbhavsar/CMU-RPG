Feature: Players list
  In order to see his competitors thoroughly
  Player
  wants to see the his competitors profile

  Background: players have been added to database
    Given the following players exist:
      |name  |
      |User 1|
      |User 2|
      |User 3|

  Scenario: The player list page
    Given I am on the players list page
    When I click the "Show" link for "User 1"
    Then I am on the user profile page of "User 1"
    And I should see "User 1"