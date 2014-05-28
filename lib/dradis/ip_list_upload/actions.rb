module Dradis
  module IpListUpload
    private
    @@logger=nil

    public

    def self.import(params={})
      file_content = File.readlines(params[:file])
      @@logger = params.fetch(:logger, Rails.logger)
      host_array = file_content.split(', ')
      parent = Node.find_or_create_by_label(Configuration.top_node)

      host_array.each do |host_label|
        host_node = parent.children.find_or_create_by_label_and_type_id(host_label, Node::Types::HOST )
      end
    end
  end
end