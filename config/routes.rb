Rails.application.routes.draw do
  root :to => 'pages#splash'

  get 'splash',   to: 'pages#splash',  as: :mock_splash
  get 'home',     to: 'pages#home',    as: :mock_home

  get 'about',    to: 'pages#about',   as: :about
  get 'terms',    to: 'pages#terms',   as: :terms
  get 'privacy',  to: 'pages#privacy', as: :privacy
  get 'contact',  to: 'pages#contact', as: :contact
end
