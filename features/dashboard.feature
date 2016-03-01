Feature: Working on our Outreach program


    Scenario: Display a Potential Lead on the Dashboard
        Given there is a builtWith import with domain "softwarecriollo.com"
        And I go to the dashboard
        Then I should see "softwarecriollo.com"

    Scenario: Finds the contact of a potential leads
        Given there is a builtWith import with domain "softwarecriollo.com"
        And I go to the dashboard
        And I fill out the contact information
        When I go to the dashboard
        Then there with be only 1 potential client
        Then I should see "Contact Ivan. There are no more leads here"

    Scenario: Doesn't match the criteria


    Scenario: Display how many contacts we have found this month
