class LeadsController < ApplicationController
#  def index
#    @leads = Lead.all
#  end
#
#  def show
#    @lead = Lead.find(params[:id])
#  end
#
  def new
    @lead = Lead.new
  end
  
  def create
    @lead = Lead.new(params[:lead])
    if @lead.save
      Mailer.deliver_lead_notification @lead
      #Mailer.deliver_enquiry_confirmation @lead
      flash[:notice] = "<div id='thankyou'><p>Thank you for your request #{@lead.first_name}, I will be in touch with you shortly</p></div>"
      redirect_to new_lead_path
    else
      render :action => 'new'
    end
  end
  
#  def edit
#    @lead = Lead.find(params[:id])
#  end
#
#  def update
#    @lead = Lead.find(params[:id])
#    if @lead.update_attributes(params[:lead])
#      flash[:notice] = "Successfully updated lead."
#      redirect_to @lead
#    else
#      render :action => 'edit'
#    end
#  end
#
#  def destroy
#    @lead = Lead.find(params[:id])
#    @lead.destroy
#    flash[:notice] = "Successfully destroyed lead."
#    redirect_to leads_url
#  end
end
