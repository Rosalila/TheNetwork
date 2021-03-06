Rails.application.routes.draw do
  get 'finish/:id' => 'components#finish'
  get 'engine_games/:id' => 'games#engine_games'
  resources :resource_tags
  resources :resource_comments
  resources :resource_ratings
  resources :resources
  resources :component_comments
  resources :asset_ratings
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root 'engines#index'

  resources :users
  resources :tags
  resources :asset_tags
  resources :component_tags
  resources :game_tags
  resources :engine_tags
  resources :asset_comments
  resources :game_comments
  resources :game_comments
  resources :engine_comments
  resources :component_ratings
  resources :game_ratings
  resources :engine_ratings
  resources :component_in_games
  resources :licenses
  resources :categories
  resources :credits
  resources :incentives
  resources :assets
  resources :components
  resources :games
  resources :engines

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
