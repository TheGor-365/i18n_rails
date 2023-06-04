Rails.application.routes.draw do
  root "wellcome#index"

  resources :users

  # scope ('/:locale'), locale: /en|ru/ do
  # end
end
