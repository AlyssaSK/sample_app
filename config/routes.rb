SampleApp::Application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'blog_posts#home'
  # Маршруты для использования в контроллерах и представлениях:
  # root_path -> '/'
  # root_url  -> 'http://localhost:3000/'

  # Маршруты для статических страниц.
  # устанавливает соответствие между GET запросом к ’/about’ и именованным маршрутом,
  # а также направляет его в about действие контроллера BlogPostsController
  match '/',        to: 'blog_posts#home',    via: 'get' # заменяет get 'blog_posts/home'
  match '/help',    to: 'blog_posts#help',    via: 'get' # заменяет get 'blog_posts/help'
  match '/about',   to: 'blog_posts#about',   via: 'get' # заменяет get 'blog_posts/about'
  match '/contact', to: 'blog_posts#contact', via: 'get' # заменяет get 'blog_posts/contact'

  # Маршруты для использования в контроллерах и представлениях:
  # about_path -> '/about'
  # about_url  -> 'http://localhost:3000/about'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".



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
