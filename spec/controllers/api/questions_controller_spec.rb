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

require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

end
