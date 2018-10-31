class PagesController < ApplicationController
  before_action :set_page, only: [:show, :update, :destroy]

  # GET /pages
  def index
    if (params.has_key?(:url))
      @page = Page.find_by url: params[:url]
      pagetags = Pagetag.where(page_id: @page.id).all
      actual_tags = []
      for pagetag in pagetags do
        actual_tags.push(Tag.find_by(id: pagetag.tag_id))
      end
      p @page.class
      render json: [@page, actual_tags]
    elsif (params.has_key?(:first_scip_index) && params.has_key?(:last_scip_index))
      @page_list = []
      (params[:first_scip_index]..params[:last_scip_index]).each do |n|
        @number_string = n.to_s
        while (@number_string.length < 3)
          @number_string = "0" + @number_string
        end
        @url = "http://www.scp-wiki.net/scp-" + @number_string
        @page = Page.find_by url: @url
        @page_list.append(@page)
      end
      render json: @page_list
    elsif (params.has_key?(:tag))
      @tag = Tag.find_by(name: params[:tag])
      @pagetags = Pagetag.where(tag_id: @tag.id)
      @pages = []
      for pagetag in @pagetags do
        @pages.push(Page.find_by(id: pagetag.page_id))
      end
      render json: @pages
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def page_params
      params.require(:page).permit(:url, :html, :thread_id, :first_scip_index, :last_scip_index)
    end
end
