class CreatePaymentCategories < ActiveRecord::Migration
  def change
    create_table :payment_categories do |t|
      t.integer :payment_category_id
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
