require 'clockwork'

require_relative '../../config/boot'
require_relative '../../config/environment'

include Clockwork


#TO BE ENABLED WHEN SFTP IN ENABLED
# Clockwork.every(15.minutes, 'BlockTradePublisherJob') { BlockTradePublisherJob.perform_later }
#TO BE REMOVED WHEN SFTP IS ENABLED
Clockwork.every(10.seconds, 'BlockTradePublisherTestRecordsJob') { AutocreateBlogWorker.new.perform }
