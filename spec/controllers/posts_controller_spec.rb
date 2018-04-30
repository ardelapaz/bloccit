require 'rails_helper'
include RandomData

RSpec.describe PostsController, type: :controller do

  let(:my_post) { Post.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_post] to @posts" do
      get:index
      expect(assigns(:posts)).to eq([my_post])
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, params: { id: my_post.id }
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
      get :show, params: { id: my_post.id }
      expect(response).to render_template :show
    end

    it "assigns my_post to @post" do
      get :show, params: { id: my_post.id }
      expect(assigns(:post)).to eq(my_post)
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

   describe "GET edit" do
     it "returns http success" do
       get :edit
       expect(response).to have_http_status(:success)
     end
   end

end
