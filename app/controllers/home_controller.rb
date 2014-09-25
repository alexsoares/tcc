
class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    
  end


  def locais

    respond_to do |format|
     format.js 
    end	
  end

  def tabs
    respond_to do |format|
     format.js 
    end	
  end

  def map_release
    @latitude = params[:lat]
    @longitude = params[:lng]
    respond_to do |format|
      format.js
    end
  end

  def new_release
    respond_to do |format|
      format.html
      format.js
    end
  end
end
