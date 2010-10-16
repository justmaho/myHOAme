class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:home, :emergency, :contact]
  
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

end
