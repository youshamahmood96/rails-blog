Rails.application.routes.draw do
  resources :articles1, only:[:show]
end
