class CreatePiadines < ActiveRecord::Migration[6.1]
  def change
    create_table :piadines do |t|
      t.string :Nome
      t.string :impasto
      t.text :farcitura
      t.integer :quantità
      t.text :indirizzo

      t.timestamps
    end
  end
end
