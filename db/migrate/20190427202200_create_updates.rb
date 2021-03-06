class CreateUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :updates do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
