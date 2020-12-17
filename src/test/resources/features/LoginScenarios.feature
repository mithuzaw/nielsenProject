Feature:  LogIn Action Functionality
  Description: This feature will test a LogIn  functionality

  Background:
    Given User navigate to the url "https://www.nielsen.com"
    When User can login successfully
    Then User can reset login credentials
    And User can get error for incorrect login attempt

  Scenario: 1.Verify valid userName and valid Password
    When   User enter "mithuzaw18@gmail.com" as Email
    And   User enter "mithu123" as Password
    Then   User can successfully login
    And Welcome message shows "Welcome to Nielsen"


  Scenario: 2.Verify inValid UserName and invalid Password
    When User enter "mithuzaw18@gmail" as Email
    And User enter "Newyear2020" as Password
    Then User can not successfully login
    And Error message should display


  Scenario: 3.Verify user reset login with valid userName and Invalid password
    When User forget email or password
    And User should able to click on forget passWord
    Then Page should take to email address associate with account
    And User should able to reset login credential successfully

  Scenario: 4.Verify user reset login with valid userName and valid password
    When User type correct email and password
    And User should able to click on forget passWord
    Then Page should take to email address associate with account
    And User should able to reset login credential successfully
    And User should get message from Nielsen

  Scenario Outline: 5.Verify error states for incorrect login attempts in frontend

    When user enter "<Email>" at "LoginPage.Email" textbox
    And user enter "<Password>" at "LoginPage.Password" textbox
    And user click "LoginPage.Login" button
    Then home page display
    And login success message display in "HomePage.SuccessMsg" as "<Message>"
    Then user click "HomePage.Logout" link
    Examples:
      | Email               | Password | Message               |
      | mithuzaw@gmail      | mithu120 | error message display |
      | mithuzaw18gmail.com | mithu87  | error message display |

    # Verify error states for incorrect login attempts in backend can be test in API Service testing.

