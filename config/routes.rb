Rails.application.routes.draw do
  devise_for :church_users, class_name: 'ChurchUser', controllers: { sessions: 'church_users/sessions', unlocks: 'church_users/unlocks' }


  resources :companies, only: %i[new]
  resources :registrations, only: %i[new create]

  # Defines the root path route ("/")
  root "home#index"
end
