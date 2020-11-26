Rails.application.routes.draw do
  resources :articles1, only:[:show, :index, :new, :create]
end
