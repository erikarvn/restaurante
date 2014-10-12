Restaurente::Application.routes.draw do
  get "static_pages/home"
  get "static_pages/help"
  resources :rols


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end



root 'rols#index'

  post '/user/save' => 'rols#save'
  get '/users/create_user' => 'rols#create_user'
  get '/users/remove/:id' => 'rols#remove'
  post '/user' => 'users#create'

  get '/users/edit_user/:id' => 'rols#edit_user'


 get '/admi' => 'rols#admi'
 get '/cuentas' => 'rols#cuentas'
 
 get '/asistente' => 'rols#asistente'
 get '/chef' => 'rols#chef'
 get '/mesero' => 'rols#mesero'
 get '/barman' => 'rols#barman'
 

  get '/admi/user/role_admi/:id' => 'rols#role_admi', :as => 'role_admi'
  get '/admi/user/role_asistente/:id' => 'rols#role_asistente', :as => 'role_asistente'
  get '/admi/user/role_barman/:id' => 'rols#role_barman', :as => 'role_barman'
  get '/admi/user/role_mesero/:id' => 'rols#role_mesero', :as => 'role_mesero'
  get '/admi/user/role_chef/:id' => 'rols#role_chef', :as => 'role_chef'


  # You can have the root of your site routed with "root"
 
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
