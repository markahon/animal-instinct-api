class Api::ChoicesController < Api::ApiController

  def index
    expose Choice.where(question_id: params[:question_id]), each_serializer: ChoiceSerializer
  end

end
