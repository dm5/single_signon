require "spec_helper"

describe PasswordsController do
  describe "routing" do
    it "routes to #new" do
      get("/passwords/new").should route_to("passwords#new")
    end

    it "routes to #create" do
      post("/passwords").should route_to("passwords#create")
    end

    it "routes to #edit" do
      get("/passwords/1/edit").should route_to("passwords#edit", :id => "1")
    end

    it "routes to #update" do
      put("/passwords/1").should route_to("passwords#update", :id => "1")
    end
  end
end

