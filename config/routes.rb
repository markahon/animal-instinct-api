# -*- encoding : utf-8 -*-
Rails.application.routes.draw do

  namespace 'api' do
    api :version => 1 do
      resources :questions
      resources :choices
      resources :answers
    end
  end

  root :to => 'home#index'
end
