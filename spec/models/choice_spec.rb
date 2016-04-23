# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: choices
#
#  id            :integer          not null, primary key
#  img_path      :string(255)
#  label         :string(255)
#  question_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  answers_count :integer          default(0), not null
#

require 'rails_helper'

RSpec.describe Choice, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
