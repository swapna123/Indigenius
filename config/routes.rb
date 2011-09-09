Indigenius::Application.routes.draw do
  get "aboutus/index"

  get "aboutus/why_indigenius"

  get "aboutus/our_story"
 
  get "aboutus/clientele"

  get "aboutus/commitment"

  get "casestudies/index"

  get "casestudies/online_exam_framework"

  get "solutions/index"

  get "solutions/content_manage"
 
  get "solutions/test_genius"
  
  get "solutions/equilab"

  get "technologies/index"

  get "service/index"

  get "service/sharepoint_services"

  get "service/webapplication_development"

  get "service/product_development"

  get "service/opensource_customizations"

  get "service/staff_augmentation"

  get "service/reselling"

  resources :testimonials

  resources :news do
    get 'new_index' , :on => :collection 
  end

  get "dashboard/index"

resources :administrator

 resources :login do
 get 'logout' , :on => :collection
end
   get "home/index"
 
   get "home/careers"

   get "home/contact_us"

   get "home/sitemap"

   get "home/disclaimer"

   get "home/privacy_policy"

   get "home/about_us"

   get "home/feedback"

   post "home/process_email"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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
   root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
