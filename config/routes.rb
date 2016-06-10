Rails.application.routes.draw do
  devise_for :users
  root 'homepage#home'

  # Routes for the Act resource:
  # CREATE
  get "/acts/new", :controller => "acts", :action => "new"
  post "/create_act", :controller => "acts", :action => "create"

  # READ
  get "/acts", :controller => "acts", :action => "index"
  get "/acts/:id", :controller => "acts", :action => "show"

  # UPDATE
  get "/acts/:id/edit", :controller => "acts", :action => "edit"
  post "/update_act/:id", :controller => "acts", :action => "update"

  # DELETE
  get "/delete_act/:id", :controller => "acts", :action => "destroy"
  #------------------------------

  # Routes for the Day resource:
  # CREATE

  get "/days/new", :controller => "days", :action => "new"
  post "/create_day", :controller => "days", :action => "create"

  # READ
  get "/days", :controller => "days", :action => "index"
  get "/days/:id", :controller => "days", :action => "show"

  # UPDATE
  get "/days/:id/edit", :controller => "days", :action => "edit"
  post "/update_day/:id", :controller => "days", :action => "update"

  # DELETE
  get "/delete_day/:id", :controller => "days", :action => "destroy"
  #------------------------------

  # Routes for the Guide resource:
  # CREATE
  get "/guides/new", :controller => "guides", :action => "new"
  post "/create_guide", :controller => "guides", :action => "create"

  # READ
  get "/guides", :controller => "guides", :action => "index"
  get "/guides/:id", :controller => "guides", :action => "show"

  # UPDATE
  get "/guides/:id/edit", :controller => "guides", :action => "edit"
  post "/update_guide/:id", :controller => "guides", :action => "update"

  # DELETE
  get "/delete_guide/:id", :controller => "guides", :action => "destroy"
  #------------------------------


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
