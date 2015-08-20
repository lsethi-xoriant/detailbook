class DetailbooksController < ApplicationController
  
  # POST /detailbooks
  def create
    @detailbook = Detailbook.create(detailbook_params)
    redirect_to detailbooks_path
  end

  # DELETE /detailbooks/1
  def destroy
    Detailbook.find(params[:id]).destroy
    redirect_to detailbooks_path
  end

  # GET /detailbooks/1/edit
  def edit
    @detailbook = Detailbook.find(params[:id])
  end

  # GET /detailbook
  def index
    @detailbooks = Detailbook.all
  end
  
  # GET /detailbooks/new
  def new
    @detailbook = Detailbook.new
  end
  
  # GET /detailbooks/1
  def show
    @detailbook = Detailbook.find(params[:id])
  end
  
  # PATCH/PUT /detailbooks/1
  def update
    @detailbook = Detailbook.find(params[:id])
    @detailbook.update(self.detailbook_params)
    redirect_to detailbooks_path
  end
  
  # Method available objects of the same class
  protected

  def detailbook_params
    params.require(:detailbook)
    .permit(
    :link,
    :post,
    :video,
    :audio,
    :files,
    :message,
    :applications
    )
  end
end
