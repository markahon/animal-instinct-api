class Api::AnswersController < Api::ApiController

  def create
    Answer.create(choice_id: params[:choice_id])
  end

end
