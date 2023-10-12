Feature: Capitalize string
  Scenario: Capitalize an entire string of letters
    Given I have a string "aBc"
    When I capitalize the string
    Then I get "ABC"

  Scenario: Capitalize a string with spaces
    Given I have a string "aBc dEf"
    When I capitalize the string
    Then I get "ABC DEF"

    Scenario: Capitalize a string with numbers
    Given I have a string "aBc 123"
    When I capitalize the string
    Then I get "ABC 123"