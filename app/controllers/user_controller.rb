class UserController < ApplicationController

        def signin 
          
          @users = User.all
        end

        def signup
          
          @user = User.new
        
        end

        def create
          @user = User.new(user_params)
          puts "*************************"
          if @user.save
            #UserMailer.notify_user(@user).deliver
            flash[:message] = "user successfully created"
            #session[:user_id] = @user.id  #create cookie if use cookie session it store in browser in encrypt format
            redirect_to  :action => "signin"
            
          else
            render :action => "signup"
          end
       
        end

      def index
          
      end
        
      def verify
           user=User.find_by_email(params[:email])
           puts "hii"
          if user && user.authenticate(params[:password])
              session[:user_id]=user.id 
              puts user.id
              redirect_to root_url, notice: "Successfully Logged In"
          else
              flash.now[:alert]="Invalid Email or password given"
              render "signin"
          end
      end
      
      private
        
        def user_params
          params.require(:user).permit(:name, :email, :password)
        end

end


