class RecordsController < ApplicationController

  # before_action :find_account

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
    @account = Account.find(params[:account_id])
  end

  def create
    @account = Account.find(params[:account_id])
    @record = @account.records.create(record_params)
    @account.credit
    redirect_to account_path(@account)
  end

  private

  def record_params
    params.require(:record).permit(:memo, :amount, :account_id)
  end

  # def find_account
  #   if params[:account_id]
  #     @account = Account.find(params[:account_id])
  #   end
  # end

end
