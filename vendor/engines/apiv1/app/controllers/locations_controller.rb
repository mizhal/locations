class Apiv1::LocationsController < Apiv1::ApplicationController

  before_action :authenticate_user!

  def open
    location = Location.find(params[:id])

    render json: { is_open: location.open? } 
  end

end