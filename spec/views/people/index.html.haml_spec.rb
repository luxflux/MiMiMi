require 'spec_helper'

describe "people/index" do
  before(:each) do
    2.times do
      FactoryGirl.create(:person)
    end
    FactoryGirl.create(:quote, :body => "He did something!", :person => Person.last)
    assign(:people, Person.all)
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "div.span4>h2>a", :text => /MyName \d/, :count => 2
    assert_select "div.span4>p", :text => "He did something!", :count => 1
  end
end
