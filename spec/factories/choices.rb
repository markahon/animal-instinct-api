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

FactoryGirl.define do
  factory :choice do
    img_path "MyString"
    label "MyString"
  end
end
