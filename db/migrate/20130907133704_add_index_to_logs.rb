class AddIndexToLogs < ActiveRecord::Migration
  def change
    add_index :Logs, :date
  end
end
