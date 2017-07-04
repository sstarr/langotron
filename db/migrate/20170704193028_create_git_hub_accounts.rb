class CreateGitHubAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :git_hub_accounts do |t|
      t.string :name
      t.integer :github_id

      t.timestamps
    end
  end
end
