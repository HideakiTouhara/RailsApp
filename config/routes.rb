Rails.application.routes.draw do
  get 'cards/index'

  get 'cards/show'

  get 'cards/add'

  get 'cards/edit'

  get 'dengonban/index'

  get 'helo/index'
  get 'helo', to: 'helo#index'
  get 'helo/other'
  post 'helo', to: 'helo#index'
  post 'helo/index'
end
