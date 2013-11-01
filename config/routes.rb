Status::Application.routes.draw do
  root 'home#index'
  
  get "/:slug" => 'home#client'
  get "/:slug/children" => 'home#children'
  get "/:slug/play" => 'home#client', :defaults => { :play => true }
end
