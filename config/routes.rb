Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        get '/olympians', to: 'olympians#index'
        get '/olympian_stats', to: 'olympians#stats'
        get '/events', to: 'events#index'
      end
    end
  end
