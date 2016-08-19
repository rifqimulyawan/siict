class CreateBarangs < ActiveRecord::Migration
  def change
    create_table :barangs do |t|
      t.belongs_to :kategori, index: true, foreign_key: true
      t.belongs_to :merk, index: true, foreign_key: true
      t.text :nama
      t.integer :baik
      t.integer :rusak
      t.date :masuk
      t.string :gambar
      t.text :keterangan

      t.timestamps null: false
    end
  end
end
