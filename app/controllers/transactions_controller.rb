class TransactionsController < ApplicationController
  def detail
    @account = Account.find(params[:id])
    @transactions = @account.transactions

    def new
    end
  end
end
