Feature: Working on our Outreach program

    Scenario: Display a Potential Lead on the Dashboard
        Given there is a builtWith import with domain "softwarecriollo.com"
        And I go to the dashboard
        Then I should see "softwarecriollo.com"
        And I fill out the contact information
        And there with be only "1" potential client
  
