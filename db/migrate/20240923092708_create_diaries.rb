class CreateDiaries < ActiveRecord::Migration[7.2]
  def change
    create_table :diaries do |t|
      t.date :written_on
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :diaries, :written_on, unique: true
  end
end
