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

FactoryGirl.define do
  factory :question do
    img_path "MyString"
    text "MyText"
    choices nil
  end
end
