class PostsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:edit,:update,:destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:show, :edit, :update, :new]
  before_action :set_status, only: [:show, :edit, :update, :new]
  before_action :authenticate_user!, except: [:index]
  before_action :set_category, only:[:new, :edit]
  before_action :set_status, only:[:new, :edit]


# GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @categories = Category.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new

  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

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

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params

      params.require(:post).permit(:image ,:description ,:category_id ,:status_id ,:price ,:user_id ,:name)
    end
    
    # 出品フォームでカテゴリーのselectプルダウンメニューをdbから引っ張ってくる際に渡す値
    def set_category
      @categories = Category.all
    end
    # # 出品フォームの商品の状態のプスダウンメニューをdbから引っ張ってきます。  
    def set_status
      @statuses = Status.all
    end
    def correct_user
          post = Post.find(params[:id])
          if current_user.id != post.user.id
            redirect_to root_path
          end
    end
end
