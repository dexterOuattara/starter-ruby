class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /posts
  # GET /posts.json
  def index

<<<<<<< Updated upstream
    if params[:category].blank?
      @posts = Post.all.order("created_at DESC")

    else

      @category_id = Category.find_by(name: params[:category]).id
      @posts = Post.where(category_id: @category_id).order("created_at DESC")

    end
=======

>>>>>>> Stashed changes


    cate = params[:cate]

    if !cate.nil?
      @categories = Category.where(:category_id => cate)
    else
      @categories = Category.all
    end

    @categories = Category.all

<<<<<<< Updated upstream
    # @latestposts = Post.all.where(:category_id => '1')
    # @latestposts = Post.all.distinct
    #
    @latestposts= Post.select(:category_id).distinct
=======
>>>>>>> Stashed changes


  end

  def tag
    @posts = Post.all
    @categories = Category.select(:name).distinct

  end 

  # GET /posts/1
  # GET /posts/1.json
  def show
<<<<<<< Updated upstream
=======
    @post = Post.find(params[:id])
>>>>>>> Stashed changes
    @categories = Category.all

  end



  # GET /posts/new
  def new
    @post = Post.new
    @posts = Post.all

  end

  # GET /posts/1/edit
  def edit
    if params[:category].blank?
      @posts = Post.all.order("created_at DESC")

    else

      @category_id = Category.find_by(name: params[:category]).id
      @posts = Post.where(category_id: @category_id).order("created_at DESC")

    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user = current_user
    
    @posts = Post.all

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :caption, :image, :category_id)
    end
end
