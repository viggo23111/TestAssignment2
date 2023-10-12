Feature: Bowling game
  Scenario: Gutter game
    Given a new bowling game
    When I roll 20 times 0 pins
    Then my total score should be 0

  Scenario: All ones
    Given a new bowling game
    When I roll 20 times 1 pins
    Then my total score should be 20

  Scenario: Perfect game
    Given a new bowling game
    When I roll 12 times 10 pins
    Then my total score should be 300

  Scenario: All spares
    Given a new bowling game
    When I roll 21 times 5 pins
    Then my total score should be 150

  Scenario: One spare
    Given a new bowling game
    When I roll 2 times 5 pins
    And I roll 1 times 3 pins
    And I roll 17 times 0 pins
    Then my total score should be 16

  Scenario: One strike
    Given a new bowling game
    When I roll 1 times 10 pins
    And I roll 1 times 3 pins
    And I roll 1 times 4 pins
    And I roll 16 times 0 pins
    Then my total score should be 24


  Scenario: One spare using a list of rolls
    Given I roll
      | 1 |
      | 9 |
      | 3 |
      | 4 |
    When I score the game
    Then my total score should be 20

  Scenario: One strike using a list of rolls
    Given I roll
      | 10 |
      | 3 |
      | 4 |
    When I score the game
    Then my total score should be 24

    Scenario: All strikes using a list of rolls
    Given I roll
        | 10 |
        | 10 |
        | 10 |
        | 10 |
        | 10 |
        | 10 |
        | 10 |
        | 10 |
        | 10 |
        | 10 |
        | 10 |
        | 10 |
    When I score the game
    Then my total score should be 300