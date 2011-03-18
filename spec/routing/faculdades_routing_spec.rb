require "spec_helper"

describe FaculdadesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/faculdades" }.should route_to(:controller => "faculdades", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/faculdades/new" }.should route_to(:controller => "faculdades", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/faculdades/1" }.should route_to(:controller => "faculdades", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/faculdades/1/edit" }.should route_to(:controller => "faculdades", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/faculdades" }.should route_to(:controller => "faculdades", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/faculdades/1" }.should route_to(:controller => "faculdades", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/faculdades/1" }.should route_to(:controller => "faculdades", :action => "destroy", :id => "1")
    end

  end
end
