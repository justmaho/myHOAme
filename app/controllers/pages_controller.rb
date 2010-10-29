class PagesController < ApplicationController
  layout 'static_pages'
  
  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  def home
    @title ="Home"    
  end
  
  def emergency
    @title = "Emergency Phone Numbers"
  end
  
  def index
    @title = "Welcome to myHOAme"
  end

end
