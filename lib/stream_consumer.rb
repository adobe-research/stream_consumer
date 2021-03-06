###########################################################################
##
## stream_consumer
##
## Multi-threaded HTTP stream consumer, with asynchronous spooling
## and multi-threaded production.
##
## David Tompkins -- 05/30/2013
## tompkins@adobe_dot_com
##
###########################################################################
##
## Copyright (c) 2013 Adobe Systems Incorporated. All rights reserved.
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
## http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
###########################################################################

module StreamConsumer
  require 'stream_consumer/version'
  require 'stream_consumer/logger'
  require 'stream_consumer/stats'
  require 'stream_consumer/config'
  require 'stream_consumer/production_job'
  require 'stream_consumer/updater/stats_updater'
  require 'stream_consumer/producer/producer_cache_entry'
  require 'stream_consumer/producer/data_producer'
  if defined?(JRUBY_VERSION) then
    require 'stream_consumer/adapter/mysql_jruby_adapter'
  else
    require 'stream_consumer/adapter/mysql_mri_adapter'
  end
  require 'stream_consumer/consumer'
end
