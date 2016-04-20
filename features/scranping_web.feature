Feature: authentication token search website

  Scenario: placing a website with authentication token
    When the user sends a web site "http://time.softwarecriollo.com/" with token authentication

  Scenario: placing a website without authentication token
    When the user sends a web site "https://www.google.co.ve" without token authentication