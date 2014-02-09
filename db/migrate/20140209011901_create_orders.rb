class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references(:customer)
      t.string :uuid
      t.timestamps
    end
  end
end
