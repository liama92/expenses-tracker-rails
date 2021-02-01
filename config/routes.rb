Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "expenses#index"
  resources :expenses do
    collection do
      get :month
    end
  end

  resources :expense_types

end
