Rails.application.routes.draw do
  
 

  

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do  
	  match '/users/sign_out' => 'devise/sessions#destroy', via: [:get, :post]
  end

  resources :users

  authenticated :user do
    root 'rooms#show', as: :authenticated_root
  end

  mount ActionCable.server => '/cable'
  root 'welcome#index'
end
