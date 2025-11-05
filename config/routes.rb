Rails.application.routes.draw do
  # Routes pour le formulaire de contact
  resources :contacts, only: [:new, :create]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  # config/routes.rb


  get 'contact', to: 'contacts#new', as: 'contact'
  get 'Merci !', to: 'contacts#thank_you', as: 'thank_you'

  get 'services', to: 'pages#services', as: 'services'

  get 'index', to: 'pages#index'

  # ... autres routes ...
end
