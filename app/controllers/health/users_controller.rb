class Health::UsersController < ApplicationController
  def index
    # Colocar os ifs pra dar redirect caso não seja um citzen
    if params[:query].present?
      @users = User.search_user(params[:query])
    elsif params[:query] == ""
      @users = "vazio"
    else
      @users = "sem_pesquisa"
    end
  end

  def show
  end

  def new
  end
end
