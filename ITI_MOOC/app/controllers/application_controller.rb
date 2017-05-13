class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # def after_sign_in_path_for(resources )
  #     resources :users do
  #     end
  # end
  #
  # def after_sign_out_path_for(resource_or_scope)
  #   # your_path
  # end
    protected

    def configure_permitted_parameters
      added_attrs = [:name,:gender, :email, :password, :password_confirmation, :dob, :profile_pic ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end
