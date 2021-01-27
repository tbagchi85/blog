require 'clockwork'

require './config/boot'
require './config/environment'

include Clockwork


#TO BE ENABLED WHEN SFTP IN ENABLED
# Clockwork.every(15.minutes, 'BlockTradePublisherJob') { BlockTradePublisherJob.perform_later }
#TO BE REMOVED WHEN SFTP IS ENABLED
Clockwork.every(30.seconds, 'BlockTradePublisherTestRecordsJob') { AutocreateBlogWorker.new.perform }
