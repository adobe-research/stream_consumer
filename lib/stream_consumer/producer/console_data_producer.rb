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
  module Producer

    class ConsoleDataProducer < DataProducer

      def initialize(logger)
	@logger = logger
	@count = 0
      end

      def format(line)
	@count = @count + 1
	line
      end

      def produce(thread_id, messages)
	logger.info "#{messages.size} of #{@count} messages produced for thread #{thread_id}"
      end

      protected

      def logger
	@logger
      end

    end

  end
end