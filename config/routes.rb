Rails.application.routes.draw do
  get 'wellcome/index'
  root "wellcome#index"

  resources :users
end
