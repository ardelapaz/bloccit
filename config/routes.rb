Rails.application.routes.draw do
  resources :topics do
    resources :sponsored_posts, except: [:index]
        resources :posts, except: [:index]
        
      end

  resources :questions
  resources :advertisements

  get 'about' => 'welcome#about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
