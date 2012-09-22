Feature: Update code
  In order to improve his performance
  Player
  wants to update his code

  Background: players have been added to database
    Given the following players exist:
      |name  |energy|intelligence|memory|experience|c05834|c14740|c14741|c96821|
      |User 1|88    |5           |5     |5         |2.0   |2.3   |1.6   |1.2   |
      |User 2|56    |5           |6     |7         |3.0   |2.3   |1.5   |4.0   |
      |User 3|59    |4           |5     |5         |2.0   |2.3   |1.6   |1.2   |

  Scenario: Player's code is anything
    Given I am on the player profile page of "User 1"
    When I fill in "This is a test code" for "code_field"
    And I press "Update"
    Then I am on the player profile page of "User 1"
    And the "code_field" field should contain "This is a test code"