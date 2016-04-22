# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  def index
    HelloWorker.perform_async
  end

  def test_email
    TestingMailer.test_email('markus@kilke.net').deliver
    redirect_to :root
  end
end
