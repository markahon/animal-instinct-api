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

FactoryGirl.define do
  factory :answer do
    choice nil
  end
end
