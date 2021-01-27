#require 'sidekiq'
#require 'sidekiq-scheduler'

class AutocreateBlogWorker < ApplicationJob
#  include Sidekiq::Worker
#  sidekiq_options retry: false

  def perform
  	Article.create(title: "Title #{Time.current} V4", description: "Some description #{Article.last.id} - Version 4x")
  end
end
