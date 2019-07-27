class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :contador, default: 1

      t.timestamps
    end
    add_reference :likes, :user, foreign_key: true
    add_reference :likes, :pin, foreign_key: true
  end
end
