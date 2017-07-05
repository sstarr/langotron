class RemoveGithubIdFromGitHubAccount < ActiveRecord::Migration[5.1]
  def change
    remove_column :git_hub_accounts, :github_id, :integer
  end
end
