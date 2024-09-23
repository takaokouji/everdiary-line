class CreateMyLineUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :my_line_users do |t|
      t.string :uid
      t.references :user, index: {:unique=>true}, null: false, foreign_key: true

      t.timestamps
    end
  end
end
