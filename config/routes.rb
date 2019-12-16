Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for(:users,
    path: '',
    path_names: {
      sign_in:      'login',
      sign_out:     'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations',
    })

  resources :properties
  resources :deals
  resources :sellers, only: %i[index show]
  resources :realtors, only: %i[index show]
  resources :nps_feedbacks, only: %i[index show update]
end
