class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    render json: { result: 'success' }
  end

  def destroy
    render json: { result: 'success' }
  end

  private

  def verify_signed_out_user
    missing_auth_token && return unless request.headers['Authorization'].present?
  end

  def missing_auth_token
    render json: { result: 'failed', error: 'missing_auth_token' }, status: :unauthorized
  end
end
