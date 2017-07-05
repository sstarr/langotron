# Lang-o-Tron

[![Code Climate](https://codeclimate.com/github/sstarr/langotron/badges/gpa.svg)](https://codeclimate.com/github/sstarr/langotron)

An app to find a GitHub user's favourite language.

## Requirements

- Ruby 2.4.1

## Setup

1. Create the database: `rake db:create db:schema:load`
2. Create environment variables for your GitHub API credentials (`GITHUB_CLIENT_ID` and `GITHUB_CLIENT_SECRET`)
3. Start the server: `bin/rails s`

## Testing

We're using MiniTest, with VCR to mock calls to the GitHub API.

1. Run the tests: `bin/rails test`

## TODO

- Implement error handling:
  - The GitHub user isn't found
  - They don't have any repositories
  - The connection to the API fails
- Add some basic styling to the front end
- Paginate the accounts listing
- Make accounts stale after a given time so that, when queried, their favourite language is recalculated with a new call to the API
- Present more data about an account's language preferences - perhaps a pie chart showing all the languages they use
