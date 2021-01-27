#require 'sidekiq'
#require 'sidekiq-scheduler'

class AutocreateBlogWorker < ApplicationJob
#  include Sidekiq::Worker
#  sidekiq_options retry: false

  def perform
  	Article.create(title: "Title #{Time.current}", description: "Some description #{Article.last.id} - Version 1")
  end
end
