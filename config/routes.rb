Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"
  namespace :api do
    namespace :v1 do
      resources :artists, only: %i[index] do
        get :albums, on: :member
      end
      resources :albums, only: [] do
        get :song, on: :member
      end
      get '/genres/:genre_name/random_song' => 'genres#random_song'
    end
  end
end
