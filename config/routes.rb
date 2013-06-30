Money::Application.routes.draw do
  root 'home#index'
  scope :api do
    resources :trips
    resources :countries do
      get 'visited', on: :collection
    end
    resources :currencies
  end

  get '*anything' => 'home#index'
end
