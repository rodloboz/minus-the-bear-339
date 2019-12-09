class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :state, default: 0, null: false
      t.string :teddy_sku
      t.monetize :amount
      t.string :checkout_session_id
      t.references :user, foreign_key: true
      t.references :teddy, foreign_key: true

      t.timestamps
    end
  end
end
