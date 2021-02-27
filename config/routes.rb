Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "expenses#monthly"
  
  get "expenses" => "expenses#monthly"

  resources :expenses do
    collection do
      get :month
      get :week
      get :weekly
    end
  end

  resources :expense_types

end
