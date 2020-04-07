Rails.application.routes.draw do
  devise_for :users
  resources :links do
    member do
      put "like", to:    "links#upvote"
      put "dislike", to: "links#downvote"
    end
  end
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "links#index"
end
