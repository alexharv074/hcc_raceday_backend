Rails.application.routes.draw do
  namespace :api do
    namespace :v2017 do
      get 'status/types', to: 'status#types'
      get 'canoes/:number/info', to: 'canoes#info'
      get 'canoes/first', to: 'canoes#first'
      get 'canoes/last', to: 'canoes#last'
      post 'canoes/:number/:status/:checkpoint/:date_time', to: 'canoes#add'
      get 'canoes/:number/history', to: 'canoes#history'
      get 'canoes/:number/history/:interval', to: 'canoes#history'
      get 'canoes/:number/status', to: 'canoes#status'
      get 'canoes/field/:interval', to: 'canoes#field'
      get 'canoes/field', to: 'canoes#field'
      get 'canoes/withdrawals', to: 'canoes#withdrawal_list'
      get 'canoes/nonstarters', to: 'canoes#nonstarter_list'
      get 'canoes/:number/status', to: 'canoes#status'
      post 'canoes/send', to: 'canoes#sendData'
      post 'checkpoints/sendCanoe', to: 'checkpoints#sendCanoe'
      get 'checkpoints/:checkpoint/status', to: 'checkpoints#status'
      get 'checkpoints/:checkpoint/status/:interval', to: 'checkpoints#status'
      get 'checkpoints/info', to: 'checkpoints#info'
      post 'session/login', to: 'session#login'
      get 'session/logout', to: 'session#logout'
    end
  end

  # root :to => 'sessions#login'
  # get 'login' => 'sessions#login', as: 'login'
  # post 'login' => 'sessions#login_attempt', as: nil
  # get 'logout' => 'sessions#logout', as: 'logout'
  # get 'home' => 'sessions#home', as: 'home'
  # resources :crafts
  # resources :distances
  # resources :data
  # resources :messages
  # resources :raceadmins
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
