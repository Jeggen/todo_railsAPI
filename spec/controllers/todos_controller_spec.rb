require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  describe "GET index" do
    it "gets index" do
      get :index
      expect(response).to render_template("index")
    end
  end
end

RSpec.describe TodosController, type: :controller do
  describe "POST create" do
    it "gets index" do
      post :create
      expect(response).to render_template("index")
    end
  end
end
