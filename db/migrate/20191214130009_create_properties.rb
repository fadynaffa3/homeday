class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :owner_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
