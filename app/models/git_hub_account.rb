class GitHubAccount < ApplicationRecord
  validates :name, presence: true

  def favourite_language
    'Ruby'
  end
end
