class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  respond_to :json
  
  rescue_from(ActionController::ParameterMissing) do |parameter_missing_exception|
    error = {}
    error[parameter_missing_exception.param] = ['is required']
    response = { status: 'error', fields: [error] }
    
    render json: response, status: :unprocessable_entity
  end
  
  rescue_from(ActiveRecord::RecordInvalid) do |invalid|
    response = { status: 'error', fields: invalid.record.errors }
    
    render json: response, status: :unprocessable_entity
  end
end
