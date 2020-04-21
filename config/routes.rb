Rails.application.routes.draw do

get '/naver072a084090e5defb8e32b6ac8e241188' => "spree/home#naver072a084090e5defb8e32b6ac8e241188"
get '/import' => "spree/checkout#import"
  
get '/introduce' => "spree/home#introduce"
get '/samplediary' => "spree/home#samplediary"
# get 'admin/orders/#{order.id}/diaries/#{id}' => 'admin_orders_diaries_path'

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/'
  
  
  
#   Spree::Core::Engine.add_routes do
#   namespace :admin, path: Spree.admin_path do
#                 resources :products do
#                       resources :details
#                     end
                    
#                       resources :products, except: [:show] do
#                         resources :details
#                       end
#             end
            
# end
  
  
  
  Spree::Core::Engine.add_routes do
      namespace :admin, path: Spree.admin_path do
        resources :orders do
          resources :diaries
        end
      end
      
        resources :orders, except: [:show] do
            resources :diaries
          end
    
      end
  
  
end