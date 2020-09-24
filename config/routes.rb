Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update]
  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end

  root 'home#top'
  get 'home/about'

  get 'follows' => 'relationships#follows'
  get 'followers' => 'relationships#followers'

  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す

end