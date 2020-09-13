class GiohangsController < ApplicationController
  before_action :set_giohang, only: [:show, :edit, :update, :destroy]

  # GET /giohangs
  # GET /giohangs.json
  def index
    @giohangs = Giohang.all
  end

  # GET /giohangs/1
  # GET /giohangs/1.json
  def show
  end

  # GET /giohangs/new
  def new
    @giohang = Giohang.new
  end

  # GET /giohangs/1/edit
  def edit
  end

  # POST /giohangs
  # POST /giohangs.json
  def create
    @giohang = Giohang.new(giohang_params)

    respond_to do |format|
      if @giohang.save
        format.html { redirect_to @giohang, notice: 'Giohang was successfully created.' }
        format.json { render :show, status: :created, location: @giohang }
      else
        format.html { render :new }
        format.json { render json: @giohang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giohangs/1
  # PATCH/PUT /giohangs/1.json
  def update
    respond_to do |format|
      if @giohang.update(giohang_params)
        format.html { redirect_to @giohang, notice: 'Giohang was successfully updated.' }
        format.json { render :show, status: :ok, location: @giohang }
      else
        format.html { render :edit }
        format.json { render json: @giohang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giohangs/1
  # DELETE /giohangs/1.json
  def destroy
    @giohang = current_giohang
    @giohang.destroy
    session[:giohang_id] = nil

    respond_to do |format|
      format.html { redirect_to giohangs_url, notice: 'Đã hủy giỏ hàng' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giohang
      @giohang = Giohang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def giohang_params
      params.fetch(:giohang, {})
    end
end
