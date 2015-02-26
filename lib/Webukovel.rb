module Webukovel
  class PathFinder

    def initialize(map)
      @map = map
      @route_mocks = {
          "A" => [9,"A->3->F"],
          "1C"=> [3, "1C->2->F"],
          "13" => [11, "13->17->G->2->F"],
          "D" => [11,"D->17->G->2->F"],
          "16" => [18, "16->B->15->G->2->F"],
          "B" => [10,"B->14->F"]
      }
    end

    def get_route(start_point)
      @route_mocks[start_point][1]
    end

    def get_route_time(start_point)
      @route_mocks[start_point][0]
    end
  end
end