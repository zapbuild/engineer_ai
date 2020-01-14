Rails.application.routes.draw do

  get 'users/all_users'
  get 'followers/my_followers'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  devise_for :users

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get 'dashboard', :to => 'dashboard#index'

  get 'my_tweets', :to => 'tweets#my_tweets'

  get 'my_followers', :to => 'followers#my_followers'

  get 'all_users', :to => 'users#all_users'

  post 'follow', :to => 'users#follow'

  get 'my_profile', :to => 'users#my_profile'
end
