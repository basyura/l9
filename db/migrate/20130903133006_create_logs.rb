class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.datetime :date
      t.string :username
      t.text :message

      t.timestamps
    end
  end
end
