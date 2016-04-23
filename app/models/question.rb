# -*- encoding : utf-8 -*-
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

class Question < ActiveRecord::Base
  has_many :choices
end
