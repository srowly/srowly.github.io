class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :title
      t.text :text
      t.string :created_by
      t.timestamps
    end
  end
end
