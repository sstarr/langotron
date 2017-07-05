class GitHubAccount < ApplicationRecord
  validates :name, presence: true

  def favourite_language
    client = Octokit::Client.new(
      client_id: ENV['GITHUB_CLIENT_ID'],
      client_secret: ENV['GITHUB_CLIENT_SECRET']
    )

    languages = client.repos(name).map(&:language)
    languages.group_by(&:itself).values.max_by(&:size).try(:first)
  end
end
