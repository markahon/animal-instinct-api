class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :img_path, :label, :answers_count
end
