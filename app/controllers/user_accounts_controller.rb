#require 'digest/sha1'

class UserAccountsController < ApplicationController
  # GET /user_accounts
  # GET /user_accounts.json

  #http_basic_authenticate_with :authenticate :except => [:index, :show]

  before_filter :save_login_state, :only => [:new, :create]

  def index
    @user_accounts = UserAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_accounts }
    end
  end

  # GET /user_accounts/1
  # GET /user_accounts/1.json
  def show
    @user_account = UserAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_account }
    end
  end

  # GET /user_accounts/new
  # GET /user_accounts/new.json
  def new
    @user_account = UserAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_account }
    end
  end

  # GET /user_accounts/1/edit
  def edit
    @user_account = UserAccount.find(params[:id])
  end

  # POST /user_accounts
  # POST /user_accounts.json
  def create
    @user_account = UserAccount.new(params[:user_account])
    pass =  @user_account.encrypted_password
    # salt = BCrypt::Engine.generate_salt
    @user_account.encrypted_password = Digest::SHA1.hexdigest(pass) #BCrypt::Engine.hash_secret(pass, salt)
    @user_account.admin = false

    respond_to do |format|
      if @user_account.save
        format.html { redirect_to @user_account, notice: 'User account was successfully created.' }
        format.json { render json: @user_account, status: :created, location: @user_account }
      else
        format.html { render action: "new" }
        format.json { render json: @user_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_accounts/1
  # PUT /user_accounts/1.json
  def update
    @user_account = UserAccount.find(params[:id])

    respond_to do |format|
      if @user_account.update_attributes(params[:user_account])
        format.html { redirect_to @user_account, notice: 'User account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_accounts/1
  # DELETE /user_accounts/1.json
  def destroy
    @user_account = UserAccount.find(params[:id])
    @user_account.destroy

    respond_to do |format|
      format.html { redirect_to user_accounts_url }
      format.json { head :no_content }
    end
  end
end
