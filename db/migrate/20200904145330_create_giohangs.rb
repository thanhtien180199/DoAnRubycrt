class CreateGiohangs < ActiveRecord::Migration[5.2]
  def change
    create_table :giohangs do |t|

      t.timestamps
    end
  end
end
