class FavoriteIssue < ApplicationRecord
  validates :repo_name, :issue_number, :title, :url, :author, presence: true
  validates :issue_number, numericality: { only_integer: true }
  validates :url, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "must be a valid URL" }
  validates :repo_name, uniqueness: { scope: :issue_number, message: "Issue already favorited" }

  scope :sorted, -> { order(created_at: :desc) }
end
