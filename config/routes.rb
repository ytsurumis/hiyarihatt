Rails.application.routes.draw do
  devise_for :users
  get 'hiyarihatts/index'
 root to: "hiyarihatts#index"
end
