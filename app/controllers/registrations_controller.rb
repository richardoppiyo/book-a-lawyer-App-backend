class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)

    resource.save
    if resource.persisted?
      if resource.active_for_authentication?
        sign_up(resource_name, resource)
        render json: { result: 'success' }
      else
        expire_data_after_sign_in!
        render json: { result: 'success_with_notice', notice: "signed_up_but_#{resource.inactive_message}" }
      end
    else
      render json: { result: 'failed', error: resource.errors }, status: :unprocessable_entity
    end
  end
end
