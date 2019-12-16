class NpsFeedbacksController < CrudController
  private

  def nps_feedback_params
    params.require(:nps_feedback).permit(:score)
  end
end
