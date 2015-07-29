class ApplicationController < ActionController::Base
 def show
   @user = User.find_by_id(params['id']) 
    
   
     
 end

  def new
  end
  
  def create
    
    u =User.new 
    u.caption=params['caption']
    u.url =params['url']
    u.title =params['title']
    u.save
    
    redirect_to "/user/#{u.id}"
    
    
  end
    
    
    
    
    
end
