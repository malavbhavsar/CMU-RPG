require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'
require 'runner'

include Clockwork

every(15.seconds, 'Queueing interval job') { Delayed::Job.enqueue Runner.new }
