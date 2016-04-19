Feature: Importing Bounced Emails from CSV file

  Scenario: Importing the file on folder data/bounced_emails.csv
    When the user submits valid signin information to admin "admin@example.com" and "password"
    Then I should see button "Import Emails"
    And I fill out the import file selected
    When the admin submit file selected
    Then I should see total of bounced emails of "fremberling@gmail.com" should be "1"