class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      permit_attrs(%i[address province id])
    end

    def permit_attrs(attrs)
      %i[sign_up account_update].each do |action|
        devise_parameter_sanitizer.permit(action, keys: attrs)
      end
    end
end
