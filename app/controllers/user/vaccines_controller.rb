class User::VaccinesController < ApplicationController
  def index
    # Colocar os ifs pra dar redirect caso não seja um citzen
    if params[:query].present?
      @vaccines = Vaccine.search_global_vacinne(params[:query])
    else
      @vaccines = Vaccine.where(user: current_user).joins(:vaccine_type).order('vaccine_types.name')
    end
  end

  def show
  end

  def new
  end
end
