require 'spec_helper'

describe PolybiusSquare::PolybiusSquare do

  subject { PolybiusSquare::PolybiusSquare }

  let(:list) { PolybiusSquare::AlphaList.new.list }

  describe "Initialization" do
    it "assigns the lettes in list to a 5x5 grid" do
      grid = subject.new(list)

      grid.value_at("11").should == 'a'
      grid.value_at("12").should == 'b'
      grid.value_at("13").should == 'c'
      grid.value_at("14").should == 'd'
      grid.value_at("15").should == 'e'
      grid.value_at("21").should == 'f'
      grid.value_at("22").should == 'g'
      grid.value_at("23").should == 'h'
      grid.value_at("24").should == 'i'
      grid.value_at("25").should == 'j'
      grid.value_at("31").should == 'k'
      grid.value_at("32").should == 'l'
      grid.value_at("33").should == 'm'
      grid.value_at("34").should == 'n'
      grid.value_at("35").should == 'o'
      grid.value_at("41").should == 'p'
      grid.value_at("42").should == 'q'
      grid.value_at("43").should == 'r'
      grid.value_at("44").should == 's'
      grid.value_at("45").should == 't'
      grid.value_at("51").should == 'u'
      grid.value_at("52").should == 'v'
      grid.value_at("53").should == 'w'
      grid.value_at("54").should == 'x'
      grid.value_at("55").should == 'y'
    end
  end
end
