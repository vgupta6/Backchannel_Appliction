class VoteForPostsController < ApplicationController
  # GET /vote_for_posts
  # GET /vote_for_posts.json
  def index
    @vote_for_posts = VoteForPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vote_for_posts }
    end
  end

  # GET /vote_for_posts/1
  # GET /vote_for_posts/1.json
  def show
    @vote_for_post = VoteForPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vote_for_post }
    end
  end

  # GET /vote_for_posts/new
  # GET /vote_for_posts/new.json
  def new
    @vote_for_post = VoteForPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vote_for_post }
    end
  end

  # GET /vote_for_posts/1/edit
  def edit
    @vote_for_post = VoteForPost.find(params[:id])
  end

  # POST /vote_for_posts
  # POST /vote_for_posts.json
  def create
    @vote_for_post = VoteForPost.new(params[:vote_for_post])

    respond_to do |format|
      if @vote_for_post.save
        format.html { redirect_to @vote_for_post, notice: 'Vote for post was successfully created.' }
        format.json { render json: @vote_for_post, status: :created, location: @vote_for_post }
      else
        format.html { render action: "new" }
        format.json { render json: @vote_for_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vote_for_posts/1
  # PUT /vote_for_posts/1.json
  def update
    @vote_for_post = VoteForPost.find(params[:id])

    respond_to do |format|
      if @vote_for_post.update_attributes(params[:vote_for_post])
        format.html { redirect_to @vote_for_post, notice: 'Vote for post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vote_for_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_for_posts/1
  # DELETE /vote_for_posts/1.json
  def destroy
    @vote_for_post = VoteForPost.find(params[:id])
    @vote_for_post.destroy

    respond_to do |format|
      format.html { redirect_to vote_for_posts_url }
      format.json { head :no_content }
    end
  end
end
