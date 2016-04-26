Feature: Range of Date for Statistics of Potential Clients
  Scenario: search with range of date from statistics page to admin
    When the user submits valid signin information to admin "admin@example.com" and "password"
    Then I go to the page partial statistics
    Then You should see button "Search"
    When You choose the date start "2016-03-01" and date end "2016-04-08" 
    Then I should see total of statistics of "fremberling@gmail.com"
  Scenario: search whithout range of date from statistics page to admin
    When the user submits valid signin information to admin "admin@example.com" and "password"
    Then I go to the page partial statistics
    Then You should see button "Search"
    When You choose the date start "Tue, 25 Apr 2016" and date end "Tue, 26 Apr 2016" 
    Then they should see their message
