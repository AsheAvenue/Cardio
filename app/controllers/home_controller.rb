class HomeController < ApplicationController
  before_filter :authenticate
  
  def index
    @slug = 'home'
    #figure out the next item in the play cycle
    @next_key = get_next_key(@slug)
  end
  
  def pod
    @slug = params[:slug]
    @pod = Settings.pods[@slug]
    
    if Settings.loop.enabled == true
      @play = params[:play]
    end
    
    #figure out the next item in the play cycle
    @next_key = get_next_key(@slug)
    
  end
  
  def children
    @slug = params[:slug]
    @pod = Settings.pods[@slug]
  end
  
  private
  
  def get_next_key(slug)
    #get the keys so we can figure out the next item
    keys = []
    Settings.pods.each do |key, value|
      keys << key
    end
    
    current_key = slug.to_sym
    current_index = -1
    next_key = nil
    keys.each_with_index do |key, index|
      current_index = index if key == current_key #get the current index
      next_index = current_index + 1 #calculate the next index
      next_index = 0 if next_index == keys.length #reset if we're at the end
      next_key = keys[next_index] #get the actual next key value
    end
    next_key
  end
  
end
