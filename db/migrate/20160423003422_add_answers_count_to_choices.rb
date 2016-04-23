# -*- encoding : utf-8 -*-
class AddAnswersCountToChoices < ActiveRecord::Migration

  def self.up

    add_column :choices, :answers_count, :integer, :null => false, :default => 0

  end

  def self.down

    remove_column :choices, :answers_count

  end

end
