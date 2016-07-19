class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :description
      t.float :balance, default: 0

      t.timestamps null: false
    end
  end
end
