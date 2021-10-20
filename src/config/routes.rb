# frozen_string_literal: true

Rails.application.routes.draw do

  get 'approval/', to: 'approval#index'
  resources :notifications
  get 'photos/index'
  get 'photos/new'
  get 'photos/create'
  get 'photos/destroy'
  # resources :opportunities_tags
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :issue_areas
  # link-up auth libraries
  devise_for :users

  scope format: false do
    resources :organizations, constraints: { id: /.+/ }
  end

  get '/opportunities/roster/:id', to: 'opportunities#roster', as: 'roster'
  resources :opportunities

  # andradl2
  resources :favorite_opportunities
  resources :favorite_organizations

  resources :photos, only: %i[index new create destroy]

  # added ideas as a resource with all CRUD opertions
  # also added methods approve to allow admin users to approve/unapprove ideas
  resources :opportunities do
    put :favorite, on: :member
  end

  # routes the root directory to the homepage
  root 'welcome#welcome'
  get '/dashboard', to: 'organizations#dashboard', as: :dashboard_path
  get '/add_tags', to: 'users#show'
  put '/add_tags/add', to: 'users#add_tags', constraints: { sender: /[^\/]+/ }

  #routes for approval process
  get '/approval/approve_opp/:opp_id', to: 'approval#approve_opp'
  get '/approval/approve_org/:org_id', to: 'approval#approve_org'

  #JT: Add route to profile page
  get '/users/profile_page', to: 'users#profile_page', as: :profile_page
  get '/users/new_org', to: 'users#new_org', as: :new_org

  #JT: Add route to student editing song
  get '/users/edit', to: 'users#edit', as: :edit_student
end
