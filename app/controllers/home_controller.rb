class HomeController < ApplicationController
  before_filter :authenticate
  
  def index
    @slug = 'view-all'
    #figure out the next item in the play cycle
    @next_key = get_next_key(@slug)
  end
  
  def client
    @slug = params[:slug]
    @settings = Settings.clients[@slug]
    @play = params[:play]
    
    #figure out the next item in the play cycle
    @next_key = get_next_key(@slug)
    
  end
  
  def servers
    @slug = params[:slug]
    @settings = Settings.clients[@slug]
  end
  
  private
  
  def get_next_key(slug)
    #get the keys so we can figure out the next item
    keys = []
    Settings.clients.each do |key, value|
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
