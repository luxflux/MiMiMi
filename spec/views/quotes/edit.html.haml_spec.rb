require 'spec_helper'

describe "quotes/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person, :name => "Name"))
    @quote = assign(:quote, stub_model(Quote,
      :person => @person,
      :body => "MyText"
    ))
  end

  it "renders the edit quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quote_path(@quote), :method => "post" do
      assert_select "input#quote_person", :name => "quote[person]"
      assert_select "textarea#quote_body", :name => "quote[body]"
    end
  end
end
