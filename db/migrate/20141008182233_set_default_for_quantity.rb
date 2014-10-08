class SetDefaultForQuantity < ActiveRecord::Migration
  def change
    change_column_default :purchases, :quantity, 0
  end
end