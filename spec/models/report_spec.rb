require 'spec_helper'

describe Report do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "description"
    }
  end

  it "should create a new instance given valid attributes" do
    Report.create!(@valid_attributes)
  end

  describe "report validation" do
    
    it "should not  create report with out title" do
      report_without_title= Report.new(@valid_attributes.merge(:title=>""))
      report_without_title.should_not be_valid
    end

    it "should not create report with out description" do
      report_without_description=Report.new(@valid_attributes.merge(:description=>""))
      report_without_description.should_not be_valid
    end
  end
end
