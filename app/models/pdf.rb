class Pdf < ApplicationRecord
  has_attached_file :document
  validates_attachment :document, :content_type => { :content_type => %w(application/pdf) }

  def get_file_name
    file_name = self.document_file_name.split(".")
    file_name[0]
  end
end
