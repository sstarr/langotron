require 'test_helper'

class GitHubAccountTest < ActiveSupport::TestCase
  def setup
    @github_account = GitHubAccount.new(name: 'sstarr')
  end

  test 'it requires a name to be valid' do
    @github_account.name = nil
    refute @github_account.valid?
  end

  test 'it returns a name' do
    assert_equal 'sstarr', @github_account.name
  end

  test 'it returns a favourite language' do
    VCR.use_cassette('github_account_repos') do
      assert @github_account.favourite_language != nil
    end
  end
end
