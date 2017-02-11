# frozen_string_literal: true
Rails.application.routes.draw do
  resources :doctors, except: [:new, :edit]
  resources :patients, only: [:index, :show, :destroy]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
