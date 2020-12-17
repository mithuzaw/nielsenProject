Feature: Data manipulation functionality on frontend

  Background:
    Given User can sort data shown on frontend
    When User enter date and team
    Then Users can search data shown on frontend
    When User enter date picker and team name
    And User can download exported data via .csv
    And Successfully downloaded

  Scenario: 1.Verify users can successfully sort data shown on frontend
    When User enter valid date as "12/16/2020"
    And User enter valid team "NFL"
    Then User should successfully see the data on frontend

  Scenario: 2.Verify users can not sort data and should get error message
    When User enter invalid date as "12/16/2020113"
    And User enter invalid team as "___"
    Then User should not see the data on frontend and should get message to input correct data

  Scenario: 3.Verify users can successfully search data shown on frontend
    When User enter valid date picker as from "12/16/2020" to "12/17/2020"
    And User enter valid team name "NBL"
    Then User should successfully search data and can see on frontend

  Scenario: 4.Verify users can not search data and should get error message
    When User enter invalid date pick as from "12/16/202000" to "17/12/2020"
    And User enter invalid team name as "MITHU"
    Then User should not search data on frontend and should get message to input correct data

  Scenario: 5.Verify users can download exported .csv data
    When User exported .csv data
    And User download exported .csv data
    Then User should successfully retrieve and downloaded .csv data

  Scenario: 6.Verify users can not download exported .csv data
    When User exported .doc data
    And User download exported .doc data
    Then User should not retrieve and downloaded .doc data
