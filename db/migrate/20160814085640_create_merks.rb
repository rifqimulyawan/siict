class CreateMerks < ActiveRecord::Migration
  def change
    create_table :merks do |t|
      t.string :nama

      t.timestamps null: false
    end
  end
end
