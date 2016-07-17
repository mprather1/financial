class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :account_id
      t.string :memo
      t.float :amount

      t.timestamps null: false
    end
  end
end
