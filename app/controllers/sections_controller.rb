class SectionsController < ApplicationController
  before_action :set_post, only: %i[new create]
  before_action :set_section, only: %i[update destroy]

  # # GET /posts or /posts.json
  # def index
  #   @posts = Post.all
  # end


  # GET /posts/new
  def new
    @section = @post&.sections&.new || Section.new
  end

  # POST /posts or /posts.json
  def create
    @section = @post&.sections&.new || Section.new

    @section.save
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    @section.update(section_params)
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @section.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    def set_post
      @post = Post.find(params[:post_id])
    end

    # Only allow a list of trusted parameters through.
    def section_params
      params.require(:section).permit!
    end
end
