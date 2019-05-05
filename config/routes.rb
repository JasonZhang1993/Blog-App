Rails.application.routes.draw do

  # map requests to http://localhost:3000/welcome/index to the welcome controller's index action
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Rails provides a resources method which can be used to declare a standard REST resource.
  # Check this by running `bin/rails routes`
  # Creates comments as a nested resource within articles
  resources :articles do
    resources :comments
  end

  # map requests to the root of the application to the welcome controller's index action
  root 'welcome#index'
end
