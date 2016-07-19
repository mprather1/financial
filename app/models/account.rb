class Account < ActiveRecord::Base

  has_many :records

  def credit
    self.update_attributes!(balance: Record.where('account_id = ?', self.id).sum(:amount))
  end
end
