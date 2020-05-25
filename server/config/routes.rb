Rails.application.routes.draw do
  resources :todos, only: %i[index show update]
end
