Feature: Manage adds
  In order to check the feasibility of the game control by ruby coding
  Developer
  wants to check if he can take input ans produce output

  Scenario: Test simple print command
    Given I am on the homepage
    When I fill in "input_code" with "'code 1'"
    And I press "Run"
    Then I should be on the run page
    And I should see "code 1"
