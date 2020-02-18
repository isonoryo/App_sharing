Rails.application.routes.draw do
  root to: 'portfolios#index'
  #検索機能のルーティング
  get 'search', to: 'portfolios#search'

  resources :programming_languages
  resources :portfolios do
    resources :portfolio_comments, only: [:create, :destroy, :edit, :update]
    collection do
      post :confirm
      get 'ranking'
    end
  end

  #いいね機能のルーティング
  post   '/like/:portfolio_id' => 'likes#like',   as: 'like'
  delete '/like/:portfolio_id' => 'likes#unlike', as: 'unlike'

  #デバイスのルーティング
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
