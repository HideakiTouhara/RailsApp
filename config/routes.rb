Rails.application.routes.draw do
  resources :board_messages
  resources :board_users
  resources :data_pages
  devise_for :accounts
  get 'ajax/index'

  resources :questionary_results
  resources :questionary_choices
  resources :questionary_items
  resources :questionaries
  resources :answers
  resources :questions
  resources :mycontacts
  get 'blogs/index'

  get 'blogs/genre'

  get 'blogs/show'

  get 'blogposts/index'

  get 'blogposts/add'

  get 'blogposts/edit'

  get 'blogposts/delete'

  get 'bloggenres/index'

  get 'bloggenres/add'

  get 'bloggenres/edit'

  get 'blogconfigs/index'

  get 'blogconfigs/edit'

  get 'messages/index'

  get 'messages/how'

  get 'messages/add'

  get 'messages/edit'

  get 'people/index'
  get 'people', to: 'people#index'

  get 'people/add'
  post 'people/add', to: 'people#create'

  get 'people/edit/:id', to: 'people#edit'
  post 'people/edit/:id', to: 'people#update'
  patch 'people/edit/:id', to: 'people#update'

  get 'people/delete/:id', to: 'people#delete'

  get 'people/find'
  post 'people/find'

  get 'people/:id', to: 'people#show'

  get 'messages/index'
  get 'messages', to: 'messages#index'

  get 'messages/add'
  post 'messages/add', to: 'messages#create'

  get 'messages/edit/:id', to: 'messages#edit'
  patch 'messages/edit/:id', to: 'messages#update'

  get 'messages/delete/:id', to: 'messages#delete'

  get 'messages/:id', to: 'messages#show'

  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/show'

  get 'cards/add'
  post 'cards/add'

  get 'cards/:id', to: 'cards#show'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'

  get 'cards/delete/:id', to: 'cards#delete'

  get 'dengonban/index'

  get 'helo/index'
  get 'helo', to: 'helo#index'
  get 'helo/other'
  post 'helo', to: 'helo#index'
  post 'helo/index'

  get 'ajax/data'
  post 'ajax/data'
end
