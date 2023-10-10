Rails.application.routes.draw do
  resources :users do
    collection do
      get 'search' # Adiciona uma rota para a ação "search"
    end
  end

  # Resto das rotas...

  # Define a rota root ("/")
  root "users#index"
end