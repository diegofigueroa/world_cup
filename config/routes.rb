WorldCup::Application.routes.draw do
  
  resources :group_standings, only: [:index],  defaults: {format: :json}, path: 'standings'
  resources :players, except: [:new, :edit],  defaults: {format: :json}
  resources :stadia,  except: [:new, :edit],  defaults: {format: :json}, path: 'stadiums'
  
  resources :matches, except: [:new, :edit], defaults: {format: :json} do
    member do
      put 'start'
      put 'finish'
    end
    resources :goals, only: [:index, :create, :destroy, :update]
  end
  resources :teams,   except: [:new, :edit],  defaults: {format: :json} do
    member do
      get 'matches'
      get 'goals'
    end
  end
  resources :groups,  except: [:new, :edit],  defaults: {format: :json} do
    member do
      get 'matches'
    end
  end
  
  match '/404' => 'errors#not_found',      via: [:get, :post, :delete, :put]
  match '/400' => 'errors#bad_request',    via: [:get, :post, :delete, :put]
  match '/500' => 'errors#internal_error', via: [:get, :post, :delete, :put]
  
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
