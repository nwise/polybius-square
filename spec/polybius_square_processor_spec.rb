require 'spec_helper'

describe "PolybiusSquare::PolybiusSquareProcessor" do

  subject { PolybiusSquare::PolybiusSquareProcessor }

  describe ".process" do
    it "should convert the \"encoded_string\" parameter succesfully" do
      subject.process(:encoded_string => "53-24-34").should == 'win'
    end
  end
end
