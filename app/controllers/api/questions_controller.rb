class Api::QuestionsController < Api::ApiController

  def index
    expose Question.all, each_serializer: QuestionSerializer
  end

  def show
    expose Question.find(params[:id])
  end
end
