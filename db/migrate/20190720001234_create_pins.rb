class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
