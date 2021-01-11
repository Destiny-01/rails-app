Rails.application.routes.draw do
  devise_for :users
  resources :blogs do
    resources :comments
    member do
      put 'upvote'
      put 'downvote'
    end
  end
  # get 'home/index'
  # root 'home#index'
  root 'blogs#index'
  get 'about' => 'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
