# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  img_path   :string(255)
#  text       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :img_path, :text
end
