Rails.application.routes.draw do
  resources :programming_languages
  root to: 'portfolios#index'
  resources :portfolios do
    resources :portfolio_comments, only: [:create, :destroy, :edit, :update]
  end
    collection do
      post :confirm
    end
  end
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    get "user/:id", :to => "users/registrations#show"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
end
