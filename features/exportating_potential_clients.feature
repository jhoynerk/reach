Feature: Exportation Potential Clients to CSV file

  Scenario: export csv file from dashboard page to admin
    When the user submits valid signin information to admin "admin@example.com" and "password"
    Then I should see link "Exportar"
    When the button "Exportar" is pressed
    Then you should see the string with information

  Scenario: Exporting the PotentialClient info with BuiltWith company name
    Given there is a BuiltWith with company name "softwarecriollo"
    Given there is a Potential client with name "ivan", email "ivan@softwarecriollo.com" lastname "acosta-rubio" and title "CEO"
    Given I log in to the app as an admin
    When the button "Exportar" is pressed
    Then exported CSV should be
    """
    id,name,email,last_name,title,company
    1,ivan,ivan@softwarecriollo.com,acosta-rubio,CEO,softwarecriollo

    """



