class AddItem < ActiveRecord::Migration[5.2]
  def change
    add_column :Items,:Frequency,:text
    add_column :Items,:created_at,:datetime
    add_column :Items,:updated_at,:datetime
  end
end
