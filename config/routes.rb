Rails.application.routes.draw do
  devise_for :users
  get 'admin' => 'admins#home'
  get 'kitchen' => 'cook_rooms#home'
  get 'config_user' => 'admins#setup'
  post 'contact' => 'welcome#contact'
  root 'welcome#home'
  get 'products_by_categorie' => 'products#products_by_categorie'
  get 'add_op' => 'orders#add_item'
  get 'remove_op' => 'orders#remove_item'
  get 'generate_invoice' => 'invoices#generate_invoice'
  get 'dashboard' => 'dashboard#home'
  resources :establishments
  resources :ingredients
  resources :inventarios
  resources :products
  resources :product_ingredients
  resources :orders
  resources :invoices
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
