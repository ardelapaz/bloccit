require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do

  let(:ad) do
    Advertisement.create(
      id: 1,
      title: RandomData.random_sentence,
      copy: RandomData.random_paragraph,
      price: 10
    )
    end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it "creates add in the advertisements db" do
      get :index
      expect(assigns(:advertisements)).to eq(ad)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: ad.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: ad.id}
      expect(response).to render_template :show
    end

    it "assigns ad to @advertisement" do
      get :show, {id: ad.id}
      expect(assigns(:advertisement)).to eq(ad)
    end
  end
end
