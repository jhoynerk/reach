Feature: Sign up

  Scenario: Successful signup
    Given a user visits the signup page
    And I fill out the user information email "test@example.com" pass: "password"
    When the user submits valid signup information
    Then they should see their dashboard page
