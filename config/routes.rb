Status::Application.routes.draw do
  root 'home#index'
  
  get "/:slug" => 'home#client'
  get "/:slug/servers" => 'home#servers'
  get "/:slug/play" => 'home#client', :defaults => { :play => true }
end
