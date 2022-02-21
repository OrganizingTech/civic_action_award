class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :instructions
      t.string :submission_confirmation
      t.integer :points
      t.string :status

      t.timestamps
    end
  end
end
