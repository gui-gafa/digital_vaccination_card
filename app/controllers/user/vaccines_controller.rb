class User::VaccinesController < ApplicationController
  def index
    if params[:query].present?
      @vaccines = Vaccine.search_global_vacinne(params[:query])
    else
      @vaccines = Vaccine.all
    end
  end

  def show
  end
end
