Rails.application.routes.draw do
  get 'achievements/index'

  get 'achievements/show'

  get 'organizations/index'

  get 'organizations/show'

  get 'skills/index'

  get 'skills/show'

  get 'posts/index'

  get 'resume', to: "pages#resume"

  #get 'signup' => redirect('/404.html')

  devise_for :users, path: "", path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'signup'
  }

  root 'pages#home'

  resources :projects, only: [:show, :index]

  resources :organizations, path: "work", only: [:index]

  resources :posts, only: [:index]

  resources :skills, only: [:index]

  resources :achievements, only: [:index]

  namespace :recognition do 
    # resources :successes, only: [:index]
    # resources :awards, only: [:index]
    resources :mentions, only: [:index]
  end

  namespace :manage, :path => "dashboard" do
    mount Soulmate::Server, :at => "autocomplete"
    resources :projects
    # authenticate :user, lambda { |u| u.has_role? :admin } do
    #   mount Sidekiq::Web => '/sidekiq'
    # end
  end

  namespace :api do
    jsonapi_resources :projects
  end

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
