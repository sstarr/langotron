class GitHubAccount < ApplicationRecord
  validates :name, presence: true

  before_create :fetch_favourite_language

  private

  def fetch_favourite_language
    client = Octokit::Client.new(
      client_id: ENV['GITHUB_CLIENT_ID'],
      client_secret: ENV['GITHUB_CLIENT_SECRET']
    )

    languages = client.repos(name).map(&:language)
    self.favourite_language = languages.group_by(&:itself).values.max_by(&:size).try(:first)
  end
end
