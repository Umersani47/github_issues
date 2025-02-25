class IssuesController < ApplicationController
  before_action :set_github_service, only: [:search]

  def index
    @issues = []
  end

  def search
    if params[:repo].blank?
      flash[:alert] = "Repository name is required"
      return redirect_to root_path
    end

    begin
      @issues = @github_service.fetch_issues(params[:repo])
      @repo_name = params[:repo]
      render :index
    rescue StandardError => e
      flash[:alert] = e.message
      redirect_to root_path
    end
  end

  def favorites
    @favorites = FavoriteIssue.sorted
  end

  def save_favorite
    favorite = FavoriteIssue.new(favorite_params)

    if favorite.save
      render json: { message: "Saved as favorite", issue: favorite }
    else
      render json: { error: favorite.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  private

  def set_github_service
    @github_service = GithubService.new
  end

  def favorite_params
    params.permit(:repo_name, :issue_number, :title, :url, :author)
  end
end
