# -*- encoding : utf-8 -*-
class HelloWorker
  include Sidekiq::Worker

  def perform
    Rails.logger.info 'Hello worker here!'
  end
end
