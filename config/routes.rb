Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api', defaults: {format: :json}  do
    namespace 'v1' do
      resources :magics do
        collection do
          get 'cards_group_by_set'
          get 'cards_group_by_set_group_by_rarity'
          get 'cards_from_KTK'
        end
      end
    end
  end
end
