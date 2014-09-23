class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    
  end

  def locais
    interesses = Array.new
    @client = GooglePlaces::Client.new(API_KEY)
    current_user.pessoa.interesses.each do |int|
      interesses << int.nome
    end
    #pessoa = Pessoa.where(:user_id => current_user.id)
    
    @client = @client.spots(current_user.pessoa.latitude,current_user.pessoa.longitude,:radius => '500', :types =>["restaurant","bar"] )
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
