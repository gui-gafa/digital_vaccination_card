class User::VaccinesController < ApplicationController
  def index
    # Colocar os ifs pra dar redirect caso não seja um citzen
    if params[:query].present?
      @vaccines = Vaccine.search_global_vacinne(params[:query]).where(user: current_user)
    else
      @vaccines = Vaccine.where(user: current_user).joins(:vaccine_type).order('vaccine_types.name')
    end
  end

  def show
  end

  def new
    @vaccine = Vaccine.new
  end

  def create
    @vaccine = Vaccine.new(vaccine_params)
    @vaccine.user = current_user
    # criar a primeira dose
    if @vaccine.save
      redirect_to vaccines_path, notice: 'Vacina cadastrada com sucesso.'
    else
      render :new
    end
  end

  def vaccine_params
    params.require(:vaccine).permit(:vaccine_type_id)
  end
end
