require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ApplicationHelper do
  describe "page title" do
    it "returns the translated page title" do
      helper.page_title("people", "index").should == "Listing People"
    end
  end

  describe "page tagline" do
    it "returns the page tagline if it exists" do
      helper.tagline("people", "create").should == "There were errors!"
    end
    it "returns nothing if there is no tagline specified" do
      helper.tagline("people", "new").should == ""
    end
  end
end
