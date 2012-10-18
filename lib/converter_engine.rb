module PolybiusSquare
  class ConverterEngine
    def initialize(encoded_string)

      list = %w[ a b c d e f g h i j k l m n o p q r s t u v w x y z ]

      list.each do |dropped_letter|
        (1..26).each do |offset|
          PolybiusSquare::PolybiusSquareProcessor.new(:encoded_string => encoded_string, :list_offset => offset, :dropped_char => dropped_letter).process
        end
      end

    end
  end
end
