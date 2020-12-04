require 'sidekiq'
require 'sidekiq-scheduler'

class AutocreateBlogWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
  	Article.create(title: "Title #{Time.current}")
  end
end
