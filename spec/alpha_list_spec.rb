require 'spec_helper'

describe PolybiusSquare::AlphaList do

  subject { PolybiusSquare::AlphaList }
  let (:offset) { 5 }

  context "When initialzed with no parameters" do
    it "creates a list of letters" do
      subject.new.list.should == %w[ a b c d e f g h i j k l m n o p q r s t u v w x y z ]
    end
  end

  context "When initialized with and \"offset\" parameter" do
    it "creates a list of letters starting at the position of the offset parameter" do
      subject.new(:offset => offset).list.should == %w[ f g h i j k l m n o p q r s t u v w x y z a b c d e]
    end
  end

  context "When initialized with a \"dropped\" parameter" do
    it "creates a list of letters without the dropped parameter" do
      subject.new(:dropped => 'f').list.include?('f').should_not be_true
    end
  end
end
