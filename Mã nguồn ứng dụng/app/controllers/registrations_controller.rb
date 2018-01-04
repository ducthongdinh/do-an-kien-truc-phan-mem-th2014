class RegistrationsController < Devise::RegistrationsController
    def create
        devise_parameter_sanitizer.permit(:sign_up) do |user|
        user.permit(:full_name, :address, :phone, :email, :password, :password_confirmation)
        end
        super
    end
    def edit
        
        super
    end
    def update
        devise_parameter_sanitizer.permit(:account_update) do |user|
        user.permit(:full_name, :address, :phone, :email, :password, :password_confirmation, :current_password)
        end
        super
    end
    def destroy
        super
    end
    def cancel
        super
    end
 
end
