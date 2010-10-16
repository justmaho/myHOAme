class PagesController < ApplicationController
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
