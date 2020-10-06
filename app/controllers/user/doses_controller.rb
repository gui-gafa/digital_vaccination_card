class User::DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    # tem que chegar uma dose aqui
    @vaccine = Vaccine.find(params[:vaccine_id])
    @dose.vaccine = @vaccine
    if @dose.save
      redirect_to user_vaccines_path
    else
      render :new
    end
  end

  def dose_params
    params.require(:dose).permit(:date)
  end
end
