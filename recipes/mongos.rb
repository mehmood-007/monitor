#
# Cookbook Name:: monitor
# Recipe:: mongo
#
# Copyright 2013, Kwarter, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

sensu_check 'mongos-process' do
  #file '/processes/check-procs.rb'
  command 'check-procs.rb -p mongos'
  handlers ['default']
  subscribers ['app', 'mongodb-mms']
  interval 30
end

# TODO metrics but we already have MMS
