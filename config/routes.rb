Rails.application.routes.draw do
  as :user do
     match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
 end

  devise_for :users, controllers: {
    registrations: 'registrations',
    confirmations: 'confirmations'
  }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
