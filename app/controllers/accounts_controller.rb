class AccountsController < ApplicationController
  def detail
    @user = User.find(current_user.id)
    @accounts = @user.accounts
#    def index
#      @accounts = Account.all
#
#      render 'new'
#    end
  end
end
