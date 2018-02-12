@energy
Feature: User is able to convert Energy units

  Background:
    Given I click on Got it button
    And I land on Area screen

  Scenario: User is able call menu by click
    When I click on menu
    Then I see app menu

  Scenario Outline:
    When I click on menu
    And I select "<target>" from menu
    Then I land on "<result>" screen

    Examples:
      |target|result|
      |Energy|Energy|

  Scenario Outline: User is able to select Energy units from right column
    When I click on menu
    And I select "Energy" from menu
    Then I land on "Energy" screen
    When I select "<target>" from right column
    Then I see it "<result>" in To Header
    And I get "<result1>" in To field

    Examples:
      |target|result|result1|
      |BTU   |BTU |0.0009   |
      |Calorie|Calorie |0.239    |
      |Kilojoule|Kilojoule|0.001 |





