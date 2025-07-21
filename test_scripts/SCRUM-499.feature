# Feature: About Us Page Functionality
#   As a website user
#   I want to view information about the company
#   So that I can understand its mission, culture, and key personnel.

@AboutUsPage
Feature: About Us Page Core Functionality

  Scenario: User navigates to the About Us page via global navigation
    Given the user is on the homepage
    When the user clicks the "About Us" navigation link
    Then the user should be directed to the "About Us" page
    And the search icon should be visible
    And the profile icon should be visible

  Scenario: User views the About Us page introduction
    Given the user is on the "About Us" page
    When the page loads successfully
    Then a large infographic image related to healthcare should be displayed on the left side of the introduction section
    And a heading "Explore Our Culture, and Discover Our Fascinating Journey" should be displayed on the right side of the introduction section
    And descriptive text explaining the company's values and approach to healthcare should be displayed below the heading

  Scenario: User views key staff information in the Key Personnel Directory
    Given the user is on the "About Us" page
    When the user scrolls to the "Key People" section
    Then a table should be displayed with the following columns:
      | Name      | Country   | Time Zone | Role      |
    And the table should contain a list of key staff members and their details

  Scenario: User views key company metrics in the Statistics section
    Given the user is on the "About Us" page
    When the user scrolls to the "Company Statistics" section
    Then four distinct cards should be displayed horizontally
    And the cards should display the following key metrics:
      | Metric                       |
      | We started in 1995           |
      | 250000+ Patients Served      |
      | 10+ Locations                |
      | 4.8/5 Patient satisfaction   |

@Footer
Feature: Website Footer Display

  Scenario: User views the website footer information
    Given the user is on any page of the website
    When the user scrolls to the bottom of the page
    Then the footer should be displayed with three distinct columns
    And the first column should contain main office contact details and hours
    And the second column should contain a commitment statement and social media links
    And the third column should contain legal and privacy links
    And copyright information should be displayed at the very bottom of the footer