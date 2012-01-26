require 'spec_helper'

describe "quotes/index" do
  before(:each) do
    assign(:person, stub_model(Person, :name => "MyName"))
    assign(:quotes, [
      stub_model(Quote,
        :body => "MyText"
      ),
      stub_model(Quote,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of quotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "p.quote", :text => "MyText".to_s, :count => 2
  end
end
