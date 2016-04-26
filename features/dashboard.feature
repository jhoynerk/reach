Feature: Working on our Outreach program

  Scenario: Display Dashboard to Users
    When the user submits valid signin information to user "user@example.com" and "password"
    Then I should see button "Create Potential client"

  Scenario: Display Dashboard to Admin
    When the user submits valid signin information to admin "admin@example.com" and "password"
    Then I should see button "Importar"

  Scenario: Display a Potential Lead on the Dashboard
    Given there is a builtWith import with domain "softwarecriollo.com"
    And I go to the dashboard
    And I fill out the contact information
    And there with be only "1" potential client

  Scenario: display counter potential clients has User on the Dashboard
    When the user submits valid signin information to user "user_count@example.com" and "password"
    And I fill out the contact information name "jhoynerk" last name "caraballo" email "jhoynerk@gmail.com" titulo "send"
    And the counter potential customers to "user_count@example.com" should be "1"

  Scenario: New Clients Potencial Without BuiltWiths
    When the user submits valid signin information to user "user@example.com" and "password"
    And I fill out the contact information name "Fremberling" last name "Ramos" email "fremberling@gmail.com" titulo "test"
    And the counter potential customers to "user@example.com" should be "1"

  Scenario: validating url statistic
    Given the user is not logged and write on the url "http://192.168.1.110:3000/statistics" 
    Then The sistem should redirect at the home of the page for their logging
