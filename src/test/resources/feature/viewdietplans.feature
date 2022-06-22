@dietplanpage
Feature: View Recent Diets page functionality

  @dietplans
  Scenario: Test the navigation of View Recent Diets page
    Given The user is in my patients page
    When The user clicks on View Previous Diet Plans of the patient
    Then The user should be navigated to View Recent Diets page
    And The user should see the heading "Generate Diet Plans" on the page

  @dietplans
  Scenario: Test the navigation of View recent diets page from Dietician homepage
    Given The user is in the Dietician home page
    When The user clicks on Diet Plans in the menu bar
    Then The user should be navigated to View Recent Diets page
    

  @dietplans
  Scenario: Test the visibility of heading and records in View Recent Diets page
    Given The user is in the Dietician home page
    When The user clicks on Diet Plans in the menu bar
    Then The user should see 5 patient records in the View Recent Diets page
    And The user should see the heading "Generate Diet Plans" on the page

  @dietplans
  Scenario: Test the working of next page and previous page buttons when more than one page is displayed
    Given The user is in the Dietician home page
    When The user clicks on Diet Plans in the menu bar
    Then The user should see pagination displayed below the patient records 
    And The next page button should be enabled
    And The previous page button should be disabled
   
   @dietplans
  Scenario: Test the working of previous and next page buttons when one page is displayed
    Given The user is in the Dietician home page
     When The user clicks on Diet Plans in the menu bar
    Then The next page and previous page buttons below the patient records should be disabled

  @dietplans
  Scenario: Test the working of next page and previous page buttons when the user is on last page
    Given The user is in View Recent Diets page
    When The user clicks on the next page button
    And The user lands on the last page
    Then The next page button should be disabled
    And The previous page button should be enabled

 @dietplans
  Scenario: Test if the user is able to traverse front and back using next and previous page buttons
    Given The user is in View Recent Diets page
    When The user clicks on the next page button
    And The user traverses to the second page
    Then The previous page button should be enabled
    When The user selects the previous page button
    Then The user should traverse to the first page

  @viewpdf
  Scenario: Test if the user is able to click on view pdf
    Given The user is in View Recent Diets page
    When The user clicks on view pdf
    Then The user should see 6 details in the pdf

  @downloadpdf
  Scenario: Test if the user is able to download the pdf
    Given The user is in View Recent Diets page
    When The user clicks on view pdf
    And The user clicks on download
    Then The pdf is downloaded successfully
