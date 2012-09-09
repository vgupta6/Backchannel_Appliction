class VoteForCommentsController < ApplicationController
  # GET /vote_for_comments
  # GET /vote_for_comments.json
  def index
    @vote_for_comments = VoteForComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vote_for_comments }
    end
  end

  # GET /vote_for_comments/1
  # GET /vote_for_comments/1.json
  def show
    @vote_for_comment = VoteForComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vote_for_comment }
    end
  end

  # GET /vote_for_comments/new
  # GET /vote_for_comments/new.json
  def new
    @vote_for_comment = VoteForComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vote_for_comment }
    end
  end

  # GET /vote_for_comments/1/edit
  def edit
    @vote_for_comment = VoteForComment.find(params[:id])
  end

  # POST /vote_for_comments
  # POST /vote_for_comments.json
  def create
    @vote_for_comment = VoteForComment.new(params[:vote_for_comment])

    respond_to do |format|
      if @vote_for_comment.save
        format.html { redirect_to @vote_for_comment, notice: 'Vote for comment was successfully created.' }
        format.json { render json: @vote_for_comment, status: :created, location: @vote_for_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @vote_for_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vote_for_comments/1
  # PUT /vote_for_comments/1.json
  def update
    @vote_for_comment = VoteForComment.find(params[:id])

    respond_to do |format|
      if @vote_for_comment.update_attributes(params[:vote_for_comment])
        format.html { redirect_to @vote_for_comment, notice: 'Vote for comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vote_for_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_for_comments/1
  # DELETE /vote_for_comments/1.json
  def destroy
    @vote_for_comment = VoteForComment.find(params[:id])
    @vote_for_comment.destroy

    respond_to do |format|
      format.html { redirect_to vote_for_comments_url }
      format.json { head :no_content }
    end
  end
end
