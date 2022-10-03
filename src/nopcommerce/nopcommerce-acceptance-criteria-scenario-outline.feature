Feature: Bookcategory

  Background: I should be able to see homepage
    Given  I enter URL "https://demo.nopcommerce.com/"
    And    I am on the homepage


  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When  I am on homepage
    Then  I should be able to see top menu tabs with "<categories>"

    Examples:
      | categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital Downloads |
      | Books             |
      | Jewellery         |
      | Gift Card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on homepage
    Then I should be navigated to book category
    And  I should be able to see "<filters>"

    Examples:
      | filters |
      | Sort by |
      | Display |
      | Grid    |
      | List    |

  Scenario Outline: I should be able to see list of terms of each filter
    Given I am on book page
    When  I click on "<filter>"
    Then  I should be able to see "<list>" in dropdown menu

    Examples:
      | filters | list                                                                           |
      | sort by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3,6,9                                                                          |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I click on "<filter>"
    And   I click on any "<option>"
    Then  I should be able to choose any filter option with specific result
    And   I should be able to see "<result>"

    Examples:
      | filters | option             | result                                                            |
      | sort by | Name: A to Z       | sorted product with the product name in Alphabetical order A to Z |
      | sort by | Name: Z to A       | sorted product with the product name in Alphabetical order Z to A |
      | sort by | Price: Low to High | sorted product with the price in ascending order                  |
      | sort by | Price: High to Low | sorted product with the price in descending order                 |
      | sort by | Created on         | Recently added products should show first                         |
      | Display | 3                  | 3 products should be displayed on a page                          |
      | Display | 6                  | 6 products should be displayed on a page                          |
      | Display | 9                  | 9 products should be displayed on a page                          |

  Scenario Outline: I should be able to see product display format according to display format type as per given picture in the srs document
    Given  I am on book page
    When   I click on "<display format icon>"
    Then   I should be able to see product display format according to display format type as per given picture in the srs document

    Examples:
      | display format icon |
      | Grid                |
      | List                |
