class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    render json: { result: 'success', user: {
      **resource.attributes
        .except('encrypted_password', 'reset_password_token', 'reset_password_sent_at', 'remember_created_at'),
      avatar: resource.avatar.present? ? url_for(resource.avatar) : nil
    } }
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
