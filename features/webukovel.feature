Feature: If you wanna get prize solve me

  Scenario Outline:
    Given I'm skier with map
    When looking for the shortest route from <mountain_peak> to conference hall
    Then my route should take <route_time>
    And visit <route_checkpoints>

    Examples:
    | mountain_peak   | route_time | route_checkpoints     |
    | "1C"            | 3          | "1C->2->F"            |
    | "13"            | 11         | "13->17->G->2->F"     |
    | "D"             | 11         | "D->17->G->2->F"      |
    | "16"            | 18         | "16->B->15->G->2->F"  |
    | "B"             | 10         | "B->14->F"            |
    | "A"             | 9          | "A->3->F"             |