# healthcare_website.feature

Feature: Website Navigation
  As a website user
  I want to easily navigate the website
  So that I can find relevant information quickly

  Scenario: User accesses main navigation links
    Given the user is on any page of the website
    When the user sees the header
    Then the logo is displayed
    And the 'Home' link is visible and clickable
    And the 'About' link is visible and clickable
    And the 'Services' link is visible and clickable
    And the 'Contact' link is visible and clickable
    And a search icon is displayed
    And a user profile icon is displayed

Feature: Health Journey Introduction
  As a new visitor
  I want to understand the purpose of the service
  So that I can decide if it meets my needs

  Scenario: User understands the purpose of the service
    Given the user lands on the homepage
    When the user sees the hero section
    Then a welcoming title is displayed
    And a description of services is displayed
    And a 'Let's connect' button is visible and clickable
    And a relevant illustration is displayed

Feature: FAQ Section Header
  As a user looking for answers
  I want to easily identify the FAQ section
  So that I can find solutions to common questions

  Scenario: User identifies the FAQ section
    Given the user scrolls down the page
    When the user sees the 'FAQ' heading
    Then the 'FAQ' heading is clearly visible
    And the heading text is "Frequently Asked Questions" or "FAQ"

Feature: FAQ Section Description
  As a user looking for answers
  I want to be prompted to find questions
  So that I know what kind of content to expect

  Scenario: User is prompted to find questions
    Given the user sees the 'FAQ' heading
    When the user observes the content directly below the 'FAQ' heading
    Then a descriptive text is displayed
    And the text clearly indicates the section contains answers to common questions

Feature: Frequently Asked Questions
  As a user with questions
  I want to expand an FAQ item to view the answer
  So that I can get the information I need

  Scenario: User expands an FAQ item to view the answer
    Given the user is on the FAQ section
    When the user clicks on the question title "What types of healthcare services do you offer?"
    Then the corresponding answer content is revealed
    And the question can be collapsed again by clicking its title

Feature: Contact Section Header
  As a user who wants to get in touch
  I want to easily identify the contact form section
  So that I know where to submit my inquiry

  Scenario: User identifies the contact form section
    Given the user scrolls down the page
    When the user sees the 'Let's Connect!' heading
    Then the 'Let's Connect!' heading is clearly visible
    And the heading text is "Let's Connect!"

Feature: Contact Section Description
  As a user who wants to get in touch
  I want to be prompted to fill out the form
  So that I know how to proceed with my inquiry

  Scenario: User is prompted to fill out the form
    Given the user sees the 'Let's Connect!' heading
    When the user observes the text directly below the 'Let's Connect!' heading
    Then a descriptive text is displayed
    And the text instructs the user to fill out the form to get in touch

Feature: Contact Form Submission
  As a user
  I want to submit the contact form successfully
  So that my inquiry can be processed

  Scenario: User submits the contact form successfully
    Given the user is on the 'Let's Connect!' section
    When the user enters "John" into the "First Name" field
    And the user enters "Doe" into the "Last Name" field
    And the user selects "Male" from the "Gender" dropdown
    And the user selects "General Inquiry" from the "Reason" dropdown
    And the user clicks the 'submit' button
    Then a confirmation message is displayed
    # Or: Then the user is redirected to a "Thank You" page

Feature: Website Footer
  As a website user
  I want to access footer information
  So that I can find contact details, legal information, and company commitments

  Scenario: User accesses footer information
    Given the user is on any page of the website
    When the user scrolls to the bottom of the page
    Then main office contact details are displayed
    And a commitment statement is displayed
    And legal links (e.g., Privacy Policy, Terms of Service) are displayed
    And copyright information is displayed