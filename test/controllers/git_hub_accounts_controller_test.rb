require 'test_helper'

class GitHubAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @git_hub_account = git_hub_accounts(:one)
  end

  test "should get index" do
    get git_hub_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_git_hub_account_url
    assert_response :success
  end

  test "should create git_hub_account" do
    VCR.use_cassette('github_account_repos') do
      assert_difference('GitHubAccount.count') do
        post git_hub_accounts_url, params: { git_hub_account: { name: 'sstarr' } }
      end
    end

    assert_redirected_to root_url
  end
end
