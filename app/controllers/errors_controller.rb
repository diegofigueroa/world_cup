class ErrorsController < ApplicationController
  
  def not_found
    render json: {
      status: 'error',
      message: 'Requested resource does not exist'
    }, status: :not_found
  end
  
  def bad_request
    render json: {
      status: 'error',
      message: 'Bad request'
    }, status: :bad_request
  end

  def internal_error
    render json: {
      status: 'error',
      message: 'Internal server error'
    }, status: :internal_server_error
  end
  
  protected
  def exception
    env['action_dispatch.exception']
  end
end
