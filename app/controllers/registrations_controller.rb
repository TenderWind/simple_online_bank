class RegistrationsController < Devise::RegistrationsController
  protected

    def after_sign_up_path_for(resource)
      @account = Account.new(user_id: resource.id)
      @account.save
      signed_in_root_path(resource)
    end
end
