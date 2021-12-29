Rails.application.routes.draw do

  root 'home#index'
  #Option 1
  get '/auth', to: 'auth#new'
  post '/auth', to: 'auth#create'
  delete '/auth', to: 'auth#destroy'

  get '/users', to: 'users#new'
  post '/users', to: 'users#create'

  get '/feed', to: 'home#index'

  #Secure Area

  resources :posts do
    resources :comments, only: [:create, :destroy] do
      resources :emotions, only: [:create]
    end
    resources :emotions, only: [:create]
  end
  delete '/emotions/:id', to: 'emotions#destroy'


  # ТЗ
  # Конвертер для кулинарии: единицы измерения веса и объема из метрических
  #  в бытовые и наоборот + адаптация рецептов пропорционально отдельным
  # продуктам
  # Авторизация



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
