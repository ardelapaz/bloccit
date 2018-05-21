# require 'rails_helper'
# include RandomData

# RSpec.describe Question, type: :model do
#   describe "GET #index" do
#     it "returns http success" do
#       get :index
#       expect(response).to have_http_status(:success)
#     end

#     it "assigns [my_question] to @questions" do
#       get:index
#       expect(assigns(:questions)).to eq([my_question])
#     end
#   end

#   describe "GET show" do
#     it "returns http success" do
#       get :show, params: { id: my_question.id }
#       expect(response).to have_http_status(:success)
#     end
#     it "renders the #show view" do
#       get :show, params: { id: my_question.id }
#       expect(response).to render_template :show
#     end

#     it "assigns my_question to @question" do
#       get :show, params: { id: my_question.id }
#       expect(assigns(:question)).to eq(my_question)
#     end
#   end

#   describe "GET new" do
#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET edit" do
#     it "returns http success" do
#       get :edit, params: { id: my_question.id }
#       expect(response).to have_http_status(:success)
#     end

#     it "renders the #edit view" do
#       get :edit, params: { id: my_question.id }
#       expect(response).to render_template :edit
#     end

#     it "assigns question to be updated to @question" do
#       get :edit, params: { id: my_question.id }

#       post_instance = assigns(:question)

#       expect(post_instance.id).to eq my_question.id
#       expect(post_instance.title).to eq my_question.title
#       expect(post_instance.body).to eq my_question.body
#     end
#   end

#   describe "PUT update" do
#     it "updates question with expected attributes" do
#       new_title = RandomData.random_sentence
#       new_body = RandomData.random_paragraph

#       put :update, params: { id: my_question.id, question: {title: new_title, body: new_body } }

#       updated_post = assigns(:question)
#       expect(updated_post.id).to eq my_question.id
#       expect(updated_post.title).to eq new_title
#       expect(updated_post.body).to eq new_body
#     end

#     it "redirects to the updated question" do
#       new_title = RandomData.random_sentence
#       new_body = RandomData.random_paragraph

#       put :update, params: { id: my_question.id, question: {title: new_title, body: new_body } }
#       expect(response).to redirect_to my_question
#     end
#   end
  
#   describe "DELETE destroy" do
#     it "deletes the question" do
#       delete :destroy, params: { id: my_question.id }
#       count = question.where({id: my_question.id}).size
#       expect(count).to eq 0
#     end

#     it "redirects to questions index" do
#       delete :destroy, params: { id: my_question.id }
#       expect(response).to redirect_to posts_path
#     end
#   end

# end
