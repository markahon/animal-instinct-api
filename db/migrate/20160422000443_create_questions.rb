# -*- encoding : utf-8 -*-
class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :img_path
      t.text :text

      t.timestamps null: false
    end
  end
end
