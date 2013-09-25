class GmailAccountsController < ApplicationController
  # GET /gmail_accounts
  # GET /gmail_accounts.json
  def index
    @gmail_accounts = GmailAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gmail_accounts }
    end
  end

  # GET /gmail_accounts/1
  # GET /gmail_accounts/1.json
  def show
    @gmail_account = GmailAccount.find(params[:id])
    # a = @gmail_account.connect
    # @gmail_emails = a.inbox.emails(:unread)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gmail_account }
    end
  end

  # GET /gmail_accounts/new
  # GET /gmail_accounts/new.json
  def new
    @gmail_account = GmailAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gmail_account }
    end
  end

  # GET /gmail_accounts/1/edit
  def edit
    @gmail_account = GmailAccount.find(params[:id])
  end

  # POST /gmail_accounts
  # POST /gmail_accounts.json
  def create
    @gmail_account = GmailAccount.new(params[:gmail_account])

    respond_to do |format|
      if @gmail_account.save
        format.html { redirect_to @gmail_account, notice: 'Gmail account was successfully created.' }
        format.json { render json: @gmail_account, status: :created, location: @gmail_account }
      else
        format.html { render action: "new" }
        format.json { render json: @gmail_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gmail_accounts/1
  # PUT /gmail_accounts/1.json
  def update
    @gmail_account = GmailAccount.find(params[:id])

    respond_to do |format|
      if @gmail_account.update_attributes(params[:gmail_account])
        format.html { redirect_to @gmail_account, notice: 'Gmail account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gmail_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gmail_accounts/1
  # DELETE /gmail_accounts/1.json
  def destroy
    @gmail_account = GmailAccount.find(params[:id])
    @gmail_account.destroy

    respond_to do |format|
      format.html { redirect_to gmail_accounts_url }
      format.json { head :no_content }
    end
  end
end
