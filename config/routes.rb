Rails.application.routes.draw do
  devise_for :users
  # ここにtopコントローラーのindexアクションのルーティングを追加する
  root 'top#index'
  
  resources :list, only: %i(new create edit update destroy)
end
