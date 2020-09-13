class Giohang < ApplicationRecord
    has_many :line_items, :dependent => :destroy

    def them_sanpham(sanpham_id)
        current_item = line_items.find_by_sanpham_id(sanpham_id)
        if current_item 
            current_item.quantity += 1
        else
            current_item = line_items.build(:sanpham_id => sanpham_id)
        end
        current_item
    end

    def total_price 
        line_items.to_a.sum { |item| item.total_price }
    end
end
