module PolybiusSquare
  class PolybiusSquare

    def initialize(alpha_list)
      @alpha_grid = {}
      count = 0

      (1..5).each do |row|
        (1..5).each do |col|

          key = row.to_s + col.to_s
          value = alpha_list[count]

          @alpha_grid.merge!({key => value})
          count += 1
        end
      end
    end

    def value_at(position)
      @alpha_grid["#{position}"]
    end

  end
end
