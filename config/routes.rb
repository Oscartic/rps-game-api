Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :moves
      resources :players do
        collection do
          put :win_round
          post :create_round_players
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
