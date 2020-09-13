class CreateSanphams < ActiveRecord::Migration[5.2]
  def change
    create_table :sanphams do |t|
      t.string :tieude
      t.string :tacgia
      t.string :theloai
      t.string :namsanxuat
      t.text :noidung
      t.string :anh
      t.integer :soluong
      t.integer :gia

      t.timestamps
    end
  end
end
