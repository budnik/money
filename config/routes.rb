Money::Application.routes.draw do
  root 'home#index'
  scope :api do
    resources :trips
    resources :countries
    resources :currencies
  end

  get '*anything' => 'home#index'
end
