Feature: Signing in

  Scenario: Successful signin
    Given a user visits the signin page
    And the user has an account email "jhoynerk@gmail.com" and pass "password"
    When the user submits valid signin information
    Then they should see their dashboard page
    And they should see a signout link
