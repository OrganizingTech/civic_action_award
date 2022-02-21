class CreateAdvocates < ActiveRecord::Migration[7.0]
  def change
    create_table :advocates do |t|
      t.string :first_name
      t.string :last_hame
      t.string :email
      t.string :zipcode

      t.timestamps
    end
  end
end
