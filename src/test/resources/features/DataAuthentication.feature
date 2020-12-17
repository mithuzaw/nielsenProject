Feature: Data authentication on frontend

  Background:
    Given Correct credential data for login
    When User logging in and is showing in frontend
    Then Three columns of images display
    And Each image has three tags: game date; game location; team name


  Scenario: 1.Verify valid credential data input
    When User enter "mithuzawq8@gmail.com as email
    And User enter "mithu123" as password
    Then User logged in
    Then Three columns of images display with three tags
    And User should see each image tags: game date;game location; team name


  Scenario: 2.Verify invalid credential data input
    When User enter "mithuzaw18@gmailcom as email
    And User enter "123" as password
    Then User can not logged in
    And User should get error message
    And User should not see any image tags like : game date;game location; team name