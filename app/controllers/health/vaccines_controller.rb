class Health::VaccinesController < ApplicationController
  def index
    # Colocar os ifs pra dar redirect caso não seja um citzen
    if params[:query].present?
      @vaccines = Vaccine.search_global_vacinne(params[:query]).where(user: current_user)
    else
      @vaccines = Vaccine.where(user_id: params[:user_id]).joins(:vaccine_type).order('vaccine_types.name')
    end
  end

  def edit
    @vaccine = Vaccine.find(params[:id])
    @doses = @vaccine.doses.order(:date).reject { |dose| dose.user.present? }
  end

  def update
    @doses = Dose.find(doses_params[:id])
    @doses.each do |dose|
      dose.update(user: current_user)
    end
    redirect_to health_vaccines_path(user_id: @doses.first.vaccine.user.id)
  end

  def doses_params
    params.require(:vaccine).require(:dose_ids).permit(id: [])
  end
end
