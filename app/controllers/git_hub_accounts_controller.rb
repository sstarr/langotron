class GitHubAccountsController < ApplicationController
  # GET /git_hub_accounts
  # GET /git_hub_accounts.json
  def index
    @git_hub_accounts = GitHubAccount.order('created_at DESC')
  end

  # POST /git_hub_accounts
  # POST /git_hub_accounts.json
  def create
    @git_hub_account = GitHubAccount.find_or_initialize_by(git_hub_account_params)

    respond_to do |format|
      if @git_hub_account.save
        format.html { redirect_to root_url }
        format.json { render :show, status: :created, location: @git_hub_account }
      else
        format.html { render :new }
        format.json { render json: @git_hub_account.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def git_hub_account_params
    params.require(:git_hub_account).permit(:name)
  end
end
