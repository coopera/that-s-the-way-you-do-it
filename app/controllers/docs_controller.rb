class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]

  def index
    @q = Doc.ransack(params[:q])
    @docs = @q.result(distinct: true)

    if params[:tag]
      @docs = @docs.tagged_with(ActsAsTaggableOn::Tag.find(params[:tag]))
    end

    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
  end

  def new
    @doc = Doc.new
  end

  def edit
  end

  def create
    @doc = Doc.new(doc_params)

    @doc.user = current_user if current_user

    respond_to do |format|
      if @doc.save
        respond_with_success(format, t('doc_created_success'))
      else
        respond_with_unprocessable_entity(format, :new)
      end
    end
  end

  def update
    respond_to do |format|
      if @doc.update(doc_params)
        respond_with_success(format, t('doc_updated_success'))
      else
        respond_with_unprocessable_entity(format, :edit)
      end
    end
  end

  def destroy
    @doc.destroy
    respond_to do |format|
      format.html { redirect_to docs_url, notice: t('doc_deleted_success') }
      format.json { head :no_content }
    end
  end

  private

    def respond_with_success(format, message)
      format.html { redirect_to @doc, notice: message}
      format.json { render :show, status: :created, location: @doc }
    end

    def respond_with_unprocessable_entity(format, view)
      format.html { render view }
      format.json { render json: @doc.errors, status: :unprocessable_entity }
    end

    def set_doc
      @doc = Doc.find(params[:id])
    end

    def doc_params
      params[:doc].permit(:title, :description, :implementation, :tag_list, related_links_attributes: [:id, :link, :title, :_destroy])
    end
end
