#require 'sidekiq'
#require 'sidekiq-scheduler'

class AutocreateBlogWorker < ApplicationJob
#  include Sidekiq::Worker
#  sidekiq_options retry: false

  def perform
  	Article.create(title: "Title #{Time.current} V2", description: "Some description #{Article.last.id} - Version 2x	")
  end
end
