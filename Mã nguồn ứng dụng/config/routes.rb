Rails.application.routes.draw do
  get 'products/:id/show_resource' => 'product#show_resource', as: 'show_resource'
  resources :products
  resources :auctions do
    resources :auction_sessions
  end

  #resources :users
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :staff_reports

  get 'staff_reports/revenue/:id', to: 'staff_reports#revenue_report'

  get 'staff_reports/profit/:id', to: 'staff_reports#profit_report'

  root 'home#index'
  get  'users/show'
  post '/users/block-user/id', to: 'users#blockUser'
  post '/users/unblock-user/id', to: 'users#unblockUser'
  post '/users/block-admin/id', to: 'users#blockAdmin'
  post '/users/unblock-admin/id', to: 'users#unblockAdmin'
  get '/auction_management/', to: 'auction_management#index'
  # post '/users/edit-privilege-user/id', to: 'users#editPrivilegeUser'
  # post '/users/edit-privilege-admin/id', to: 'users#editPrivilegeAdmin'

  # get '/users/edit-privilege/id'
  # post '/users/show', to: 'users#blockUser'
  # post '/users/show', to: 'users#unblockUser'  
end
