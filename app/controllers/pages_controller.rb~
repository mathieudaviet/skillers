class PagesController < ApplicationController
  def contact
  end
  def home
  end
  def trial
  end
  def sendemail
     c = Contact.new(:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email],:company => params[:company], :message => params[:message])
     c.deliver

     @success_message= '<div class="alert alert-success col-xs-offset-1 col-xs-10 col-sm-offset-3 col-sm-6 col-md-offset-4 col-md-4"><p>Merci pour votre intérêt.</p> <p>Nous vous recontacterons dans les plus brefs délais.</p></div>'
     flash[:success] = @success_message
     redirect_to "/contact"
  end
  
  def sendtrial
      c = Trial.new(:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email],:company => params[:company], :phone => params[:phone], :skills => params[:skills])
     c.deliver
     @success_message= '<div class="alert alert-success col-xs-offset-1 col-xs-10 col-sm-offset-3 col-sm-6 col-md-offset-4 col-md-4"><p>Merci pour votre intérêt.</p> <p>Nous vous recontacterons dans les plus brefs délais.</p></div>'
     flash[:success] = @success_message
     redirect_to "/trial"
  end
end
