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
  
