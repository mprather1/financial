class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :description
      t.float :balance

      t.timestamps null: false
    end
  end
end
