class PdfsController < ApplicationController
  def index
    @pdf = Pdf.all
  end

  def create
    @pdf = Pdf.create(pdf_params)
    respond_to do |format|
      format.html { redirect_to pdfs_path, notice: 'Successfully Create' }
      format.json { head :no_content }
    end
  end

  def new
    @pdf = Pdf.new
  end

  def show

  end

  def destroy
    pdf = Pdf.find(params[:id])
    pdf.destroy
    respond_to do |format|
      format.html { redirect_to pdfs_path, notice: 'page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
  
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
  
  def pdf_params
    params.require(:pdf).permit(:document)
  end
end
