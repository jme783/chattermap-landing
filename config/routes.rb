RailsPrelaunchSignup::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "devise/registrations#new"
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :users
end