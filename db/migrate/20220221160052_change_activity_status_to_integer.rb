class ChangeActivityStatusToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :status, :integer, default: 0, using: 'status::integer'
  end
end
