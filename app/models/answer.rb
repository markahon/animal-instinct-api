# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: answers
#
#  id         :integer          not null, primary key
#  choice_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Answer < ActiveRecord::Base
  belongs_to :choice
  counter_culture :choice
end
