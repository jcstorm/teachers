Rails.application.routes.draw do
  # Routes for the Department resource:
  # CREATE
  get '/new_department' => 'departments#new'
  get '/create_department' => 'departments#create'

  # READ
  get '/departments' => 'departments#index'
  get '/departments/:id' => 'departments#show'

  # UPDATE
  get '/departments/:id/edit' => 'departments#edit'
  get '/departments/:id/update' => 'departments#update'

  # DELETE
  get '/departments/:id/destroy' => 'departments#destroy'
  #------------------------------

  # Routes for the Schedule resource:
  # CREATE
  
  get '/new_schedule' => 'schedules#new'
  get '/create_schedule' => 'schedules#create'

  # READ
  get '/schedules' => 'schedules#index'
  get '/schedules/:id' => 'schedules#show'

  # UPDATE
  get '/schedules/:id/edit' => 'schedules#edit'
  get '/schedules/:id/update' => 'schedules#update'

  # DELETE
  get '/schedules/:id/destroy' => 'schedules#destroy'
  #------------------------------

  # Routes for the Club resource:
  # CREATE
  get '/new_club' => 'clubs#new'
  get '/create_club' => 'clubs#create'

  # READ
  get '/clubs' => 'clubs#index'
  get '/clubs/:id' => 'clubs#show'

  # UPDATE
  get '/clubs/:id/edit' => 'clubs#edit'
  get '/clubs/:id/update' => 'clubs#update'

  # DELETE
  get '/clubs/:id/destroy' => 'clubs#destroy'
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get '/new_course' => 'courses#new'
  get '/create_course' => 'courses#create'

  # READ
  get '/courses' => 'courses#index'
  get '/courses/:id' => 'courses#show'

  # UPDATE
  get '/courses/:id/edit' => 'courses#edit'
  get '/courses/:id/update' => 'courses#update'

  # DELETE
  get '/courses/:id/destroy' => 'courses#destroy'
  #------------------------------

  # Routes for the Teacher resource:
  # CREATE
  get '/new_teacher' => 'teachers#new'
  get '/create_teacher' => 'teachers#create'

  # READ
  get '/teachers' => 'teachers#index'
  get '/teachers/:id' => 'teachers#show'

  # UPDATE
  get '/teachers/:id/edit' => 'teachers#edit'
  get '/teachers/:id/update' => 'teachers#update'

  # DELETE
  get '/teachers/:id/destroy' => 'teachers#destroy'
  #------------------------------
  
  # Routes for Search results
  get '/search_results' => 'searches#show'
  
  #Route for no route specified
  
 get '/' => 'teachers#index'

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
