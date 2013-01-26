class DocumentsController < ApplicationController
  def index
    @api_response = Signatureio::Document.all
    
    if @api_response.success
      @documents = @api_response.documents
    else
      @documents = []
    end
  end

  def create
    @api_response = Signatureio::Document.create(:url => params[:url])

    if @api_response.success
      redirect_to "/documents", :flash => { :success => "Document created." }
    else
      redirect_to "/documents", :flash => { :error => @api_response.error.message }
    end
  end
end
