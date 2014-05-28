require "dradis/ip_list_upload/actions"
require "dradis/ip_list_upload/version"
require "dradis/ip_list_upload/meta"

module Dradis
  module IpListUpload
    # Your code goes here...
  end
end


module Plugins
  module Upload
    include Dradis::IpListUpload
  end
end
