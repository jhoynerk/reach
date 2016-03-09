Feature: Exportation Potential Clients to CSV file

  Scenario: export csv file from dashboard page to admin
    When the user submits valid signin information to admin "admin@example.com" and "password"
    Then I should see link "Exportar"
    When the button "Exportar" is pressed
    Then they Should see Their message "Se genero el archivo CSV"

