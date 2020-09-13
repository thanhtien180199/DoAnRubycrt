class LineItem < ApplicationRecord
    belongs_to :sanpham
    belongs_to :giohang

    def total_price
        sanpham.gia * quantity
    end
end
