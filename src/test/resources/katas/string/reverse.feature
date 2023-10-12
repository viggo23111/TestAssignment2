Feature: Reverse string
  Scenario: reversing a string with only letters
    Given I have a string "aBc"
    When I reverse it
    Then I get "cBa"

  Scenario: reversing a string with numbers
    Given I have a string "aBc123"
    When I reverse it
    Then I get "321cBa"

  Scenario: reversing a string with special characters
    Given I have a string "aBc123!@#"
    When I reverse it
    Then I get "#@!321cBa"