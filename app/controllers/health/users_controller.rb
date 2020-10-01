class Health::UsersController < ApplicationController
  def index
    # Colocar os ifs pra dar redirect caso não seja um citzen
    if params[:query].present?
      @vaccines = Vaccine.search_global_vacinne(params[:query])
    else
      @users = User.all
    end
  end

  def show
  end

  def new
  end
end
