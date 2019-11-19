require 'rails_helper'

RSpec.describe Users::RegistrationsController, type: :controller do
  
  describe 'GET #new' do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
    end
    it 'returns a 200 response' do
      expect(response.status).to eq 200
    end
    it 'assigns @user' do
      expect(assigns(:user)).to be_a_new(User)
    end
    it 'redners new' do
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = create(:user)
      sign_in user
    end
    it 'リクエストは302' do
      post :create
      expect(response.status).to eq 302
    end
  end

end