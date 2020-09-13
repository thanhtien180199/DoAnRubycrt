class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.integer :sanpham_id
      t.integer :giohang_id

      t.timestamps
    end
  end
end
