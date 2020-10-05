class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    if current_user
      if current_user.role == "Cidadão"
        redirect_to user_vaccines_path
      elsif current_user.role == "Profissional da Saúde"
        # render 'health/vaccines/index'
        redirect_to health_users_path
      else
        render 'admin/home'
      end
    end
  end
end
