module Apiv1
  class ApplicationController < ActionController::API
    rescue_from 'Apiv1::ParamMissing' do |exception|
      render json: {error: exception.message}, status: 422
    end
    
    protected 

    def required_params *r_par 
      r_par.each do |par|
        raise Apiv1::ParamMissing.new(par) unless params.has_key?(par)
      end
    end
  end
end
