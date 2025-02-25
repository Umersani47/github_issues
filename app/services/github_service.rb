class GithubService
  require 'octokit'

  attr_reader :client

  def initialize
    @client = Octokit::Client.new()
  end

  def fetch_issues(repo_name)
    return [] if repo_name.blank?

    client.issues(repo_name)
  rescue Octokit::NotFound
    raise StandardError, "Repository not found"
  rescue StandardError => e
    raise StandardError, "GitHub API Error: #{e.message}"
  end
end
