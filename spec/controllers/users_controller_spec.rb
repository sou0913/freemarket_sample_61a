require 'rails_helper'

describe UsersController do
  let(:user) {create(:user)}
  let(:item) {create(:user)}

  describe 'GET #show' do
    context 'log in'do
      before do
        login user
        get :show, params: {id: user.id}
      end
      it "returns a 200 response" do
        expect(response.status).to eq 200
      end
      it 'redners the :show template' do
        expect(response).to render_template :show
      end
      it 'assigns @user' do
        expect(assigns(:user)).to eq user
      end
    end
  end

  describe 'GET #edit' do
    context 'log in' do
      before do
        login user
        get :edit, params: {id: user.id}
      end
      it "returns a 200 response" do
        expect(response.status).to eq 200
      end
      it 'redners the :edit template' do
        expect(response).to render_template :edit
      end
      it 'assigns @user' do
        expect(assigns(:user)).to eq user
      end
    end
  end

  describe 'GET #logout' do
    before do
      login user
      get :logout, params: {id: user.id}
    end
    it "returns a 200 response" do
      expect(response.status).to eq 200
    end
    it 'redners the :show template' do
      expect(response).to render_template :logout
    end
  end
end 