Feature: Lowercase string
  Scenario: Lowercase a string with one word
    Given I have a string "aBc"
    When I lowercase the string
    Then I get "abc"

  Scenario: Lowercase a string with multiple words
    Given I have a string "aBc DeF"
    When I lowercase the string
    Then I get "abc def"

    Scenario: Lowercase a string with multiple words and special characters
    Given I have a string "aBc DeF 123 !@#"
    When I lowercase the string
    Then I get "abc def 123 !@#"