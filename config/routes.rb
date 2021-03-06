Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # корень сайта
  root "events#index"

  resources :events
  # Не все действия поддерживаются – только show, edit, update
  resources :users, only: [:show, :edit, :update]
end
