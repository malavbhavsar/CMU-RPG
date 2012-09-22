Feature: Players list
  In order to see his competitors
  Player
  wants to see the player list

  Background: players have been added to database
    Given the following players exist:
      |name  |energy|intelligence|memory|experience|c05834|c14740|c14741|c96821|
      |User 1|88    |5           |5     |5         |2.0   |2.3   |1.6   |1.2   |
      |User 2|56    |5           |6     |7         |3.0   |2.3   |1.5   |4.0   |
      |User 3|59    |4           |5     |5         |2.0   |2.3   |1.6   |1.2   |

  Scenario: The player list page
    Given I am on the players list page
    Then I should see the following table:
    |1|User 1|88|5|5|5|2.0|2.3|1.6|1.2|1.775|Show|
    |2|User 2|56|5|6|7|3.0|2.3|1.5|4.0|2.7  |Show|
    |3|User 3|59|4|5|5|2.0|2.3|1.6|1.2|1.775|Show|

  Scenario: The player's page
    Given I am on the players list page
    When I follow the "Show" link for "User 1"
    Then I should be on the player profile page of "User 1"
    Then I should see "User 1"
    And I should see "energy 88"
    And I should see "intelligence 5"
    And I should see "memory 5"
    And I should see "experience 5"
    And I should see "c05834 2.0"
    And I should see "c14740 2.3"
    And I should see "c14741"
    And I should see "c96821"
    And I should see "gpa 1.775"
    And I should see "code"
    Then the "code" field should be empty
