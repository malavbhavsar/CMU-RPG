Feature: Players list
  In order to see his competitors
  Player
  wants to see the player list

  Background: players have been added to database
    Given the following players exist:
      |name  |
      |User 1|
      |User 2|
      |User 3|

  Scenario: The player list page
    Given I am on the players list page
    Then I should see the following players:
      |name  |
      |User 1|
      |User 2|
      |User 3|