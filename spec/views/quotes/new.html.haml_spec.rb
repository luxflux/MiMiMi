require 'spec_helper'

describe "quotes/new" do
  before(:each) do
    @person = assign(:person, stub_model(Person, :name => "Name"))
    assign(:quote, stub_model(Quote,
      :person => @person,
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => person_quotes_path(@person), :method => "post" do
      assert_select "textarea#quote_body", :name => "quote[body]"
    end
  end
end
