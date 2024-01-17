class AddSubcategoryRefToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :subcategory, foreign_key: true
  end
end
