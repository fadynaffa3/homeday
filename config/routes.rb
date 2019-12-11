Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for(:users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
    },
    controllers: {
      sessions: 'sessions'
    })

  resources :nps_feedbacks
end
