class PagesController < ApplicationController
  def home
    if current_user.role == "Cidadão"
      redirect_to user_vaccines_path
    elsif current_user.role == "Profissional da Saúde"
      render 'health/vaccines/index'
    else
      render 'admin/home'
    end
  end
end
