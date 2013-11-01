class HomeController < ApplicationController
  before_filter :authenticate
  
  def index
    @slug = 'view-all'
  end
  
  def client
    @slug = params[:slug]
    @settings = Settings.clients[@slug]
  end
  
  def servers
    @slug = params[:slug]
    @settings = Settings.clients[@slug]
  end
  
end
