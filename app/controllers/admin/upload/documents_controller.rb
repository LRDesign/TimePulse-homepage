class Admin::Upload::DocumentsController < Admin::AdminController
  # GET /admin/upload/documents
  def index
    @documents = Document.all
  end

  # GET /admin/upload/documents/1
  def show
    @document = Document.find(params[:id])
  end

  # GET /admin/upload/documents/new
  def new
    @document = Document.new
  end

  # POST /admin/upload/documents
  def create
    @document = Document.new(params[:document])

    if @document.save
      redirect_to(admin_upload_document_path(@document), :notice => 'Document was successfully created.')
    else
      render :action => "new"
    end
  end

  # DELETE /admin/upload/documents/1
  def destroy
    @admin_upload_document = Document.find(params[:id])
    @admin_upload_document.destroy

    redirect_to(admin_upload_documents_url)
  end
end
