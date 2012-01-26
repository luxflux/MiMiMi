require 'spec_helper'

describe "Quotes" do
  describe "GET /person/1/quotes" do
    before do
      @person = FactoryGirl.create(:person)
    end
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get person_quotes_path(@person)
      response.status.should be(200)
    end
  end
end
