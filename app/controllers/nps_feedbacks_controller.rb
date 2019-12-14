class NpsFeedbacksController < ApplicationController
  load_and_authorize_resource

  def index
    render_resources(@nps_feedbacks)
  end

  def update
    @nps_feedback.update_attributes(nps_feedback_params)
  end

  private

  def nps_feedback_params
    params.require(:nps_feedback).permit(:score)
  end
end
