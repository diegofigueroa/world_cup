require 'active_record/validations'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  respond_to :json
  
  serialization_scope :view_context
  
  before_action do
    params[:embed] = params[:embed].split(',') if params.member?(:embed)
  end
  
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
  
  protected

  def paginate(name, options = {})
    scope = instance_variable_get("@#{name}")
    request_params = request.query_parameters
    url_without_params = request.original_url.slice(0..(request.original_url.index("?")-1)) unless request_params.empty?
    url_without_params ||= request.original_url
    
    page = {}
    page[:first] = 1 if scope.total_count > 1 && !scope.first_page?
    page[:last] = scope.num_pages  if scope.num_pages > 1 && !scope.last_page?
    page[:next] = scope.current_page + 1 unless scope.last_page?
    page[:prev] = scope.current_page - 1 unless scope.first_page?
    
    pagination_links = []
    page.each do |k, v|
      new_request_hash= request_params.merge({:page => v})
      pagination_links << "<#{url_without_params}?#{new_request_hash.to_param}; rel=\"#{k}\">"
    end
    
    headers["Link"] = pagination_links.join(", ")
  end
end
