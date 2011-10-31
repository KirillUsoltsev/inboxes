Rails.application.routes.draw do
  
  resources :discussions, :except => :edit do
    resources :messages, :only => [:create, :index]
    resources :speakers, :only => [:create, :destroy]
    member do
      post 'leave'
    end
  end
  
end