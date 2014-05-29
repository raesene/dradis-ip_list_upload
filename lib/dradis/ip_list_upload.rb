require "dradis/ip_list_upload/actions"
require "dradis/ip_list_upload/version"
require "dradis/ip_list_upload/meta"

module Dradis
  module IpListUpload
    class Configuration < Dradis::Core::Configurator
      configure :namespace => 'ip_list_upload'
      setting :top_node, :default => 'hosts'
    end
  end
end


module Plugins
  module Upload
    include Dradis::IpListUpload
  end
end
