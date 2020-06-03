Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  root to: 'admin/dashboard#index'
end
