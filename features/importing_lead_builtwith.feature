Feature: Importing Users from CSV file
  Scenario: Importing the file on folder data/sample_built_with.min.csv
    When the user submits valid signin information to admin "admin@example.com" and "password"
    Then I should see button "Importar"
    And I fill out the import file
    When the admin submits file
    Then they should see their message