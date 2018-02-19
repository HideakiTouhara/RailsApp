Rails.application.routes.draw do
  get 'people/index'
  get 'people', to: 'people#index'

  get 'people/add'
  post 'people/add', to: 'people#create'

  get 'people/:id', to: 'people#show'

  get 'people/edit/:id', to: 'people#edit'
  post 'people/edit/:id', to: 'people#update'
  patch 'people/edit/:id', to: 'people#update'

  get 'people/delete/:id', to: 'people#delete'

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
end
