# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comentarios
  end

  root 'welcome#index'
end
