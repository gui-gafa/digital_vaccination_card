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
  protected

  def after_sign_in_path_for(resource)
    # return the path based on resource
    if current_user.role == "Cidadão"
      user_vaccines_path
    elsif current_user.role == "Profissional da Saúde"
      # render 'health/vaccines/index'
      health_users_path
    else
      render 'admin/home'
    end
  end
end
