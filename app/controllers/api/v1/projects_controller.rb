class Api::V1::ProjectsController < Api::V1::BaseController
  # before_action :authenticate_user_by_token!

  def show
    # puts "show current_user #{current_user}"

    @project = Project.find(params[:id])

    render json: ProjectSerializer.new(@project).to_json
  end
end
