Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :students, only: [:edit, :create, :new, :show, :update]
resources :school_classes, only: [:edit, :create, :new, :show, :update]
end
