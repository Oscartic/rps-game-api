Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :moves
      resources :players do
        collection do
          post :create_round_players, via: :options
          put :win_round, via: :options
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
