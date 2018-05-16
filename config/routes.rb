Rails.application.routes.draw do
	get 'home', to: 'welcome#home'
	get 'about', to: 'welcome#about'
	resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
