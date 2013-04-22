class CreatePayees < ActiveRecord::Migration
  def change
    create_table :payees do |t|
      t.integer :payment_category_id
      t.string :title
      t.timestamps
    end
  end
end
