Rails.application.routes.draw do
  root 'subs#index'

  resources :subs do
    resources :topics
  end

  resources :topics do
    resources :comments
  end

  scope 'topics/:topic_id', ad: 'topic' do
    resources :commetns, only: [:new, :create]
  end

  # get '/subs', to: 'subs#index'
  # get '/subs/:id', to: 'subs#show'
  # delete '/subs/:id', to: 'subs#destroy'
end
