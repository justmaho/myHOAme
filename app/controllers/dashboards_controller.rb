class DashboardsController < ApplicationController
  before_filter :authenticate_user! 
  layout 'dashboard'
  
def show
    if current_user.role == 1 || current_user == User.find(params[:id])
      @user = User.find(params[:id])
      @home = @user.homes
      @payments = @user.payments
      @services = Service.all
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @dashboards }
      end
    else 
      respond_to do |format|
        format.html { redirect_to(current_user, :notice => 'please sign in as admin to complete this operation') }
        format.xml  { head :ok }
      end
    end
  end    
  
end
