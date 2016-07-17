class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to account_path(@account)
    else
      render 'new'
    end
  end

  private

  def account_params
    params.require(:account).permit(:description, :balance)
  end

end
