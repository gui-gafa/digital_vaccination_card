class Health::VaccinesController < ApplicationController
  def index
    # Colocar os ifs pra dar redirect caso não seja um citzen
    if params[:query].present?
      @vaccines = Vaccine.search_global_vacinne(params[:query]).where(user: current_user)
    else
      @vaccines = Vaccine.where(user_id: params[:user_id]).joins(:vaccine_type).order('vaccine_types.name')
    end
  end
end
