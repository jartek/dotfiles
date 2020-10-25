require 'irb/ext/save-history'
#History configuration
IRB.conf[:SAVE_HISTORY] = 100000
IRB.conf[:USE_READLINE] = false
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
