# -*- encoding : utf-8 -*-
class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :choice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
