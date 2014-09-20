class HomeController < ApplicationController
  before_action :authenticate_user!
  def index

  end

  def locais
    @client = GooglePlaces::Client.new(API_KEY)
    @client = @client.spots(current_user.pessoa.latitude,current_user.pessoa.longitude)
#    render :partial => 'locais', :content_type => 'text/html'  
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