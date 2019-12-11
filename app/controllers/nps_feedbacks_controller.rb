class NpsFeedbacksController < ApplicationController
  load_and_authorize_resource

  def index
    render_resources(@nps_feedbacks)
  end
end
