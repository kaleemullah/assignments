class ConverterController < ApplicationController
  before_action :set_default_params

  def convert
    @result = UnitConverter.new(:temperature, params[:from], params[:value], params[:to]).result
    
    if request.post?
      redirect_to "/convert/temperature/#{params[:from]}/#{params[:value]}/#{params[:to]}"
    end
  end

  private
    def set_default_params
      params[:from] ||= 'celsius'
      params[:to] ||= 'fahrenheit'
      params[:value] = 1 if params[:value].blank?
    end 
end