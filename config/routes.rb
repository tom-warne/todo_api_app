Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  constraints format: :json do
    namespace :api do
      namespace :v1 do
        resources :tags,  only: %i[create index update]
        resources :tasks, only: %i[create destroy index update]
      end
    end
  end
end
