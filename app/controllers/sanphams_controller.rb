class SanphamsController < ApplicationController
  before_action :set_sanpham, only: [:show, :edit, :update, :destroy]

  # GET /sanphams
  # GET /sanphams.json
  def index
    @sanphams = Sanpham.all
  end

  # GET /sanphams/1
  # GET /sanphams/1.json
  def show
  end

  # GET /sanphams/new
  def new
    @sanpham = Sanpham.new
  end

  # GET /sanphams/1/edit
  def edit
  end

  # POST /sanphams
  # POST /sanphams.json
  def create
    @sanpham = Sanpham.new(sanpham_params)

    respond_to do |format|
      if @sanpham.save
        format.html { redirect_to @sanpham, notice: 'Sanpham was successfully created.' }
        format.json { render :show, status: :created, location: @sanpham }
      else
        format.html { render :new }
        format.json { render json: @sanpham.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sanphams/1
  # PATCH/PUT /sanphams/1.json
  def update
    respond_to do |format|
      if @sanpham.update(sanpham_params)
        format.html { redirect_to @sanpham, notice: 'Sanpham was successfully updated.' }
        format.json { render :show, status: :ok, location: @sanpham }
      else
        format.html { render :edit }
        format.json { render json: @sanpham.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sanphams/1
  # DELETE /sanphams/1.json
  def destroy
    @sanpham.destroy
    respond_to do |format|
      format.html { redirect_to sanphams_url, notice: 'Sanpham was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sanpham
      @sanpham = Sanpham.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sanpham_params
      params.require(:sanpham).permit(:tieude, :tacgia, :theloai, :namsanxuat, :noidung, :anh, :soluong, :gia)
    end
end
