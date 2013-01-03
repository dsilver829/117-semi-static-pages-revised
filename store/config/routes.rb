Store::Application.routes.draw do
  #%w[about privacy license].each do |page|
  #  get page, controller: 'info', action: page
  #end

  resources :pages, except: :show
  resources :products
  root to: 'products#index'
  get ':id', to: 'pages#show', as: :page
end
