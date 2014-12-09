require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
  render_views

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "doit avoir le bon titre" do
      get :home
      expect(response).to have_selector("h1", text: "Accueil")
    end

  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end

    it "doit avoir le bon titre" do
      get :contact
      expect(response).to have_selector("h1", text: "Contact")
    end

  end

  describe "GET 'about'" do
    it "devrait réussir" do
      get :about
      expect(response).to have_http_status(:success)
    end

    it "doit avoir le bon titre" do
      get :about
      expect(response).to have_selector("h1", text: "À propos")
    end

  end

end
