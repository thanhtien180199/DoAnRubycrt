class TiemController < ApplicationController
  def index
    @pagy, @sanphams = pagy(Sanpham.all, items: 3)
  end
end
