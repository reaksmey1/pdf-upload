class HomeController < ApplicationController
  def index
    filename = params["pdf_file"]+".pdf"
    @pdf_file = Pdf.find_by(document_file_name: filename).document.url
  end
end
