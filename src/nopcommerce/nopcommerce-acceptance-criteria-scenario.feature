Feature: Demo Nopcommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When  User type URL: https://demo.nopcommerce.com
    And   User clicks on enter button
    Then  User is on given URL

  Scenario: Verify that user can navigate to Books category
    When  User is on given URL
    And   Clicks on Books tab on top menu
    Then  User is navigated to Books category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When  User is on given URL
    And   Clicks on Books tab on top Menu
    And   Check Filters and List tab
    Then  Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see the 'Sort by' filter on Books category page
    Given User is on Books category page
    When  User is on Books category page
    And   Check 'Sort by' filter is present
    Then  'Sort by' filter is available on Book category page

  Scenario: Verify that user can see the 'Display' filter on Books category page
    Given User is on Books category page
    When  User is on Books category page
    And   Check 'Display' filter is present
    Then  'Display' filter is available on Book category page

  Scenario: Verify that user can see the 'Grid' tab on Books category page
    Given User is on Books category page
    When  User is on Books category page
    And   Check 'Grid' tab is present
    Then  'Grid' tab is available on Books category page

  Scenario: Verify that user can see the 'List' tab on Books category page
    Given User is on Books category page
    When  User is on Books category page
    And   Check 'Grid' tab is present
    Then  'Grid' tab is available on Books category page

  Scenario: Verify that user can see the 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Click on 'Sort by' filter
    And   Check that 'Name: A to Z' selection is present
    Then  'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see the 'Name: A to Z' as the first option in 'Sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Click on 'Sort by' filter
    And   Check that 'Name: A to Z' is the first option
    Then  'Name: A to Z' is the first option in the filter

  Scenario: Verify that user can see the 'Name: A to Z' filter is functioning as expected(Note: Products are filtered in alphabetical order)
    Given User is on Books category page
    When  User is on Books category page
    And   Click on 'Sort by' filter
    And   Select 'Name: A to Z' filter
    Then  All the products are displayed in alphabetical order




