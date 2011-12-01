Kominfov2::Application.routes.draw do

  get "dropbox/index"

  get "content/menu2_1"
  get "content/menu2_2"
  get "content/menu2_3"
  get "content/menu2_4"
  get "content/menu3_1"
  get "content/menu3_2"
  get "content/menu4_1"
  get "content/menu4_1_1"
  get "content/menu4_1_2"
  get "content/menu4_1_3"
  get "content/menu4_2"
  get "content/menu4_2_1"
  get "content/menu4_2_2"
  get "content/menu4_2_3"
  get "content/menu4_3"
  get "content/menu4_3_1"
  get "content/menu4_3_2"
  get "content/menu4_3_3"
  get "content/menu4_4"
  get "content/menu4_4_1"
  get "content/menu4_4_2"
  get "content/menu4_4_3"
  get "content/menu5_1"
  get "content/menu5_2"
  get "content/menu5_3"
  get "content/menu5_4"
  get "content/menu6_1"
  get "content/menustaticcontent"
  get "content/uploads/2011/07/"

  resources :posts
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  # match 'posts/:id' => 'post#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :posts do
  #     member do
  #       get 'edit'
  #       post 'view'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "store#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
