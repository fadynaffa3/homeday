class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.references :property, null: false, foreign_key: true, index: true
      t.references :realtor, null: false, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
