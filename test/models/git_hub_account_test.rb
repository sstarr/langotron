require 'test_helper'

class GitHubAccountTest < ActiveSupport::TestCase
  def setup
    VCR.use_cassette('github_account_repos') do
      @github_account = GitHubAccount.create(name: 'sstarr')
    end
  end

  test 'it requires a name to be valid' do
    @github_account.name = nil
    refute @github_account.valid?
  end

  test 'it returns a name' do
    assert_equal 'sstarr', @github_account.name
  end

  test 'it returns a favourite language' do
    assert @github_account.favourite_language != nil
  end
end
