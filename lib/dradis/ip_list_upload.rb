require "dradis/ip_list_upload/actions"
require "dradis/ip_list_upload/version"
require "dradis/ip_list_upload/meta"

module Dradis
  module IpListUpload
    class Configuration < ::Core::Configurator
      configure :namespace => 'ip_list_upload'
      setting :top_node, :default => 'hosts'

      # setting :my_setting, :default => 'Something'
      # setting :another, :default => 'Something Else'
  end
  end
end


module Plugins
  module Upload
    include Dradis::IpListUpload
  end
end
