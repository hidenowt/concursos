require "spec_helper"

describe ConcursosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/concursos" }.should route_to(:controller => "concursos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/concursos/new" }.should route_to(:controller => "concursos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/concursos/1" }.should route_to(:controller => "concursos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/concursos/1/edit" }.should route_to(:controller => "concursos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/concursos" }.should route_to(:controller => "concursos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/concursos/1" }.should route_to(:controller => "concursos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/concursos/1" }.should route_to(:controller => "concursos", :action => "destroy", :id => "1")
    end

  end
end
