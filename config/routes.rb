Rails.application.routes.draw do
  get 'messages/new'
  post 'messages/new', to: 'messages#create', as: 'messages'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
