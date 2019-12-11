class AddClassNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :class_name, :string
  end
end
