require "spec_helper"

describe NoticiasController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/noticias" }.should route_to(:controller => "noticias", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/noticias/new" }.should route_to(:controller => "noticias", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/noticias/1" }.should route_to(:controller => "noticias", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/noticias/1/edit" }.should route_to(:controller => "noticias", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/noticias" }.should route_to(:controller => "noticias", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/noticias/1" }.should route_to(:controller => "noticias", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/noticias/1" }.should route_to(:controller => "noticias", :action => "destroy", :id => "1")
    end

  end
end
