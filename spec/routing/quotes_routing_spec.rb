require "spec_helper"

describe QuotesController do
  describe "routing" do

    it "routes to #index" do
      get("/people/1/quotes").should route_to("quotes#index", "person_id" => "1")
    end

    it "routes to #new" do
      get("/people/1/quotes/new").should route_to("quotes#new", "person_id" => "1")
    end

    it "routes to #show" do
      get("/quotes/1").should route_to("quotes#show", :id => "1")
    end

#    it "routes to #edit" do
#      get("/quotes/1/edit").should_not route_to("quotes#edit", :id => "1")
#    end

    it "routes to #create" do
      post("/people/1/quotes").should route_to("quotes#create", "person_id" => "1")
    end

#    it "routes to #update" do
#      put("/quotes/1").should route_to("quotes#update", :id => "1")
#    end

    it "routes to #destroy" do
      delete("/quotes/1").should route_to("quotes#destroy", :id => "1")
    end

  end
end
