class ContentsController < ApplicationController
  before_action :set_content, only: [:edit, :update, :destroy]

  def index
    @contents = Content.all
  end

  def create
    @content = Content.new(content_params)
    @content.save
  end

  def edit
  end

  def update
    @content.update(content_params)
  end

  def destroy
    @content.delete
    redirect_to contents_path
  end

  def new
    @content = Content.new
  end

  private
    def content_params
      params.require(:content).permit(:title, :body, :is_published)
    end

    def set_content
      @content = Content.find(params[:id])
    end
end
