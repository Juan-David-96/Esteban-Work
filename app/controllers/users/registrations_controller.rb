# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    Rails.logger.debug "Imagen adjunta: #{params[:user][:image].inspect}"

  
    # Si hay una nueva imagen, eliminar las anteriores antes de actualizar
    if params[:user][:image].present?
      resource.image.purge
    end
  
    # Si se proporciona la contraseña actual, validar que sea correcta
    if params[:user][:current_password].present?
      if resource.update_with_password(account_update_params)
        bypass_sign_in(resource)
        redirect_to perfil_usuario_path(current_user), notice: "Perfil actualizado correctamente."
      else
        render :edit, status: :unprocessable_entity
      end
    else
      # Si no se proporciona la contraseña actual, actualizar sin validarla
      if resource.update(account_update_params)
        bypass_sign_in(resource)
        redirect_to perfil_usuario_path(current_user), notice: "Perfil actualizado correctamente."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  protected

  def configure_account_update_params
    allowed_params = [:name, :email, :password, :password_confirmation, 
                      :image, :cv, :company_name, :job_title, 
                      :years_in_position, :years_in_company]
  
    allowed_params << :role if current_user&.esteban?
  
    devise_parameter_sanitizer.permit(:account_update, keys: allowed_params)
  end
  
end
