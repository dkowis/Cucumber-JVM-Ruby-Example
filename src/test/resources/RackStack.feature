Feature: I need a stack!
  As a noob
  I need to be able to store stuff in a stack
  So that I can demonstrate awesome things in a stack
  So that I can make more money!

  Scenario: Push an item into a stack
    Given an empty stack
    When I push an item into the stack
    Then the stack contains one item

  Scenario: Push two items into a stack
    Given an empty stack
    When I push an item into the stack
    And I push another item into the stack
    Then the stack contains two items

  Scenario: Pop a given item from the stack
    Given an empty stack
    When I push an item into the stack
    And I pop from the stack
    Then I get the same item back

  Scenario Outline: do stuff with a stack
    Given an empty stack
    When I push "<value>" into the stack
    And I push "<value2>" into the stack
    When I pop two values from the stack
    Then I should get "<value3>"
  Examples:
    | value | value2 | value3  |
    | 1     | 1      | 1,1     |
    | omg   | wtf    | wtf,omg |
    | 2     | 1      | 1,2     |
    | lol   | bbq    | bbq,lol |