class User::SuggestedVaccinesController < ApplicationController
  def index
    # Colocar os ifs pra dar redirect caso não seja um citzen
    if params[:query].present?
      @vaccines = Vaccine.search_global_vaccine(params[:query])
                          .where(user: current_user)
                          # .joins(:vaccine_type)
                          # .order('vaccine_types.name')
      @suggested_vaccines = SuggestedVaccine.search_global_vaccine(params[:query])
                                            # .joins(:vaccine_type)
                                            # .order('vaccine_types.name')
    else
      @vaccines = Vaccine.where(user: current_user)
                         # .joins(:vaccine_type)
                         # .order('vaccine_types.name')
      @suggested_vaccines = SuggestedVaccine.all
                                            .joins(:vaccine_type)
                                            .order('vaccine_types.name')
    end
  end
end
