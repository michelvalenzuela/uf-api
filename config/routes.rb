Rails.application.routes.draw do
  get '/clients/:u/consumed', to: 'clients#show', as: 'user_requests'
  post '/clients/register', to: 'clients#create', as: 'sign_in'
  get '/uf/:d', to: 'adjust_infs#show', as: 'uf'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
