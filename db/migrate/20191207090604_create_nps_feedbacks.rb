class CreateNpsFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :nps_feedbacks do |t|
      t.integer :score
      t.string  :touchpoint
      t.string  :respondent_type
      t.integer :respondent_id
      t.string  :object_type
      t.integer :object_id

      t.timestamps
    end
  end
end
