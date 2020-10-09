class User::VaccinesController < ApplicationController
  def index
    # Colocar os ifs pra dar redirect caso não seja um citzen
    @suggested_vaccines = SuggestedVaccine.all
    if params[:query].present?
      @vaccines = Vaccine.search_global_vaccine(params[:query]).where(user: current_user)
    else
      @vaccines = Vaccine.where(user: current_user).joins(:vaccine_type).order('vaccine_types.name')
    end
  end

  def show
    @vaccine = Vaccine.find(params[:id])
  end

  def new
    @vaccine = Vaccine.new
    @dose = Dose.new
  end

  def create
    @vaccine = Vaccine.new(vaccine_params)
    @dose = Dose.new(dose_params)
    @vaccine.user = current_user
    @dose.vaccine = @vaccine
    # criar a primeira dose
    if @vaccine.valid? && @dose.valid?
      @vaccine.save
      @dose.save
      redirect_to user_vaccines_path, notice: 'Vacina cadastrada com sucesso.'
    else
      render :new
    end
  end

  def vaccine_params
    params.require(:vaccine).permit(:vaccine_type_id)
  end

  def dose_params
    params.require(:vaccine).require(:dose).permit(:date)
  end

  def destroy
    @vaccine = Vaccine.find(params[:id])
    # Caso não use o pundit
    if @vaccine.user != current_user
      # || @vaccine.valid_doses?
      redirect_to user_vaccines_path, alert: 'Não autorizado.'
      return
    end

    @vaccine.destroy
    redirect_to user_vaccines_path, notice: 'Vacina excluida com sucesso.'
  end
end
