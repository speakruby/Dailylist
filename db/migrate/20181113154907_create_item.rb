class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text:Item_Number
      t.text:Item_Name
      t.text:Qty
      t.text:unit_of_measure
    end
  end
end
