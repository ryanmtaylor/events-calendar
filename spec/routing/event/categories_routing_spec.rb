require "spec_helper"

describe Event::CategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/event/categories").should route_to("event/categories#index")
    end

    it "routes to #new" do
      get("/event/categories/new").should route_to("event/categories#new")
    end

    it "routes to #show" do
      get("/event/categories/1").should route_to("event/categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/event/categories/1/edit").should route_to("event/categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/event/categories").should route_to("event/categories#create")
    end

    it "routes to #update" do
      put("/event/categories/1").should route_to("event/categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/event/categories/1").should route_to("event/categories#destroy", :id => "1")
    end

  end
end
