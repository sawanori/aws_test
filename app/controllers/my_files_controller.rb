class MyFilesController < ApplicationController
  before_action :set_my_file, only: [:show, :edit, :update, :destroy]

  # GET /my_files
  # GET /my_files.json
  def index
    @my_files = MyFile.all
  end

  # GET /my_files/1
  # GET /my_files/1.json
  def show
  end

  # GET /my_files/new
  def new
    @my_file = MyFile.new
  end

  # GET /my_files/1/edit
  def edit
  end

  # POST /my_files
  # POST /my_files.json
  def create
    @my_file = MyFile.new(my_file_params)

    respond_to do |format|
      if @my_file.save
        format.html { redirect_to @my_file, notice: 'My file was successfully created.' }
        format.json { render :show, status: :created, location: @my_file }
      else
        format.html { render :new }
        format.json { render json: @my_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_files/1
  # PATCH/PUT /my_files/1.json
  def update
    respond_to do |format|
      if @my_file.update(my_file_params)
        format.html { redirect_to @my_file, notice: 'My file was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_file }
      else
        format.html { render :edit }
        format.json { render json: @my_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_files/1
  # DELETE /my_files/1.json
  def destroy
    @my_file.destroy
    respond_to do |format|
      format.html { redirect_to my_files_url, notice: 'My file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def downloadpdf
    file_name="test.mov"
    filepath = Rails.root.join('public',file_name)
    stat = File::stat(filepath)
    send_file(filepath, :filename => file_name,:length => stat.size)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_file
      @my_file = MyFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_file_params
      params.require(:my_file).permit(:title, :filename, :comment)
    end
end
