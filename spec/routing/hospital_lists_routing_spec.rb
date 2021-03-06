require "rails_helper"

RSpec.describe HospitalListsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hospital_lists").to route_to("hospital_lists#index")
    end

    it "routes to #new" do
      expect(:get => "/hospital_lists/new").to route_to("hospital_lists#new")
    end

    it "routes to #show" do
      expect(:get => "/hospital_lists/1").to route_to("hospital_lists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hospital_lists/1/edit").to route_to("hospital_lists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hospital_lists").to route_to("hospital_lists#create")
    end

    it "routes to #update" do
      expect(:put => "/hospital_lists/1").to route_to("hospital_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hospital_lists/1").to route_to("hospital_lists#destroy", :id => "1")
    end

  end
end
