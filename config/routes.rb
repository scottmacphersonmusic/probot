Rails.application.routes.draw do
  resources :robots, :attachments

  root 'robots#index'
end
