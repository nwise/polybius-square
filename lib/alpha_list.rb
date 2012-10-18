module PolybiusSquare
  class AlphaList

    attr_reader :list

    def initialize(options={})
      offset = options[:offset]
      dropped = options[:dropped]

      @list = %w[ a b c d e f g h i j k l m n o p q r s t u v w x y z ]
      @list.delete(dropped)

      if offset
        shifted = list.shift(offset)
        @list = list + shifted
      end

    end
  end
end

