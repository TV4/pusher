Pusher::Application.routes.draw do

  resources :flash_messages

  root :to => "flash_messages#index"
end
