Cardio::Application.routes.draw do
  root 'home#index'
  
  get "/:slug" => 'home#pod'
  get "/:slug/children" => 'home#children'
  get "/:slug/play" => 'home#pod', :defaults => { :play => true }
end
