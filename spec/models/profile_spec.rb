require 'spec_helper'

describe Profile do
  describe "validates fields" do
    before { 
      @profile = Profile.new(first_name:"Shibani",last_name:"Sharma2", hobbies:"test", division:"22")
      @profile.save
      @div = Profile.find_by(last_name:"Sharma2").division

      }
    subject { @profile }
    it { should respond_to(:first_name)}
    it { should respond_to(:last_name)}
    it { should respond_to(:hobbies)}
    it { should respond_to(:division)}
    it "division should be matching" do
      @div.should eq(22)
    end
  end
  it "should have a first name specified" do
    @profile = Profile.new(first_name:nil,last_name:"Sharma2", hobbies:"test", division:"22")
    @profile.save
    @profile.should_not be_valid
  end
end
