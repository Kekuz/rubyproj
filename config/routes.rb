Rails.application.routes.draw do

  root 'home#index'
  #Option 1
  get '/auth', to: 'auth#index'
  post '/auth', to: 'auth#create'
  delete '/auth', to: 'auth#destroy'

  post '/users', to: 'users#create'
  get '/feed', to: 'feed#index'

  #Secure Area

  get '/posts/new', to: 'posts#new'
  get '/posts/:id', to: 'posts#show'
  post '/posts', to: 'posts#crate'
  get '/posts/edit', to: 'posts#edit'
  put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'

  post '/post/:id/comments/', to: 'comments#create'
  delete '/post/:id/comments/:id', to: 'comments#destroy'

  post '/post/:id/emotions', to: 'emotions#create'
  post '/comments/:id/emotions', to: 'emotions#create'

  delete '/emotions/:id', to: 'emotions#destroy'


  # ТЗ
  # Конвертер для кулинарии: единицы измерения веса и объема из метрических
  #  в бытовые и наоборот + адаптация рецептов пропорционально отдельным
  # продуктам
  # Авторизация



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
