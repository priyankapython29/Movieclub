class ContactsController < ApplicationController
  before_action :current_user

    def new
        @contact = Contactform.new
      end
    
      def create
        @contact = Contactform.new(contactform_params)
        if @contact.save
          UserMailer.with(user: current_user, contact: @contact).notify_user.deliver.later
          redirect_to @contact, notice: "contact successfully created."
        else
          render :new, status: :unprocessable_entity
        end
      end

    private
    
     def contactform_params
       params.require(:contacts).permit(:username, :email, :message) 
     end
       
    
end
