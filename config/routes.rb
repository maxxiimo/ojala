Rails.application.routes.draw do
  devise_for :users
  root :to => 'pages#splash'

  resources :categories do
    resources :subcategories
  end

  get 'splash',   to: 'pages#splash',  as: :mock_splash
  get 'home',     to: 'pages#home',    as: :mock_home

  get 'about',    to: 'pages#about'
  get 'terms',    to: 'pages#terms'
  get 'privacy',  to: 'pages#privacy'
  get 'contact',  to: 'pages#contact'
end
