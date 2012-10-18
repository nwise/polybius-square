require "polybius_square/version"
require "alpha_list"
require "polybius_square"

class PolybiusSquareProcessor
  attr_reader :encoded_string, :alpha_list

  def initialize(options={})
    @encoded_string = options[:encoded_string] || ""
    list_offset = options[:list_offset].to_i || 0
    dropped_char = options[:dropped_char].to_s

    @alpha_list = AlphaList.new(:offset => list_offset, :dropped => dropped_char)
    @alpha_grid = PolybiusSquare.new(@alpha_list.list)
  end

  def process
    sentence = ''
    @encoded_string.each do |line|

      numbers = line.split("-")
      word = ""

      numbers.each do |number|
        word += @alpha_grid.value_at(number)
      end

      sentence += word + " "
    end

    return sentence
  end

end
