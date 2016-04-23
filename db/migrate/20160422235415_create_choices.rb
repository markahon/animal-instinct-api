# -*- encoding : utf-8 -*-
class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :img_path
      t.string :label
      t.belongs_to :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
