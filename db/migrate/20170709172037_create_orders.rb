class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :user, foreign_key: true
      t.references :ticket_type, foreign_key: true

      t.timestamps
    end
  end
end
