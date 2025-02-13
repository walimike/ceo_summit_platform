Rails.application.routes.draw do
  root "courses#index"

  resources :payments
  resources :ratings
  resources :certificates
  resources :quiz_responses
  resources :quiz_options
  resources :quizzes
  resources :lessons
  resources :enrollments
  resources :courses
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
