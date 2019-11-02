require 'rails_helper'

describe ItemsController do

  describe "GET #index" do
    it "renders the :index template" do
      get :index
      expect(respond).to
    end
  end
end=render @items