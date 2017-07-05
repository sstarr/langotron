class AddFavouriteLanguageToGitHubAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :git_hub_accounts, :favourite_language, :string
  end
end
