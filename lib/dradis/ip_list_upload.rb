require "dradis/ip_list_upload/actions"
require "dradis/ip_list_upload/version"

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