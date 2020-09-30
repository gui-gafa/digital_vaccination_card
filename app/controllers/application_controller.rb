class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:cpf, :email, :password, :password_confirmation, :remember_me,
                   :first_name, :last_name, :birth_date, :address, :role]
    added_attrs_update = [:cpf, :email, :password, :password_confirmation, :remember_me,
                   :first_name, :last_name, :birth_date, :address]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs_update
  end
end
