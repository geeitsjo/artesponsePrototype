Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :comments
  get 'pages/info'
	root to: redirect('/ideas')
	resources :ideas do
		resources :reactions, only: :create

	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
