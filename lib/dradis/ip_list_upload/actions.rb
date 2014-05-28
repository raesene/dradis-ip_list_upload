module Dradis
  module IpListUpload
    def self.import(params={})
      file_content = File.readlines(params[:file])
      @hosts_node = Node.new(:label => 'Hosts')
      @hosts_node.save

      hosts_array = Array.new

      file_content.each do |line|
        line_hosts = line.split(',')
        line_hosts.each {|host| hosts_array << host}
      end

      hosts_array.each do |h|
        h_node = Node.new(:label => h, :parent_id => @hosts_node)
      end
    end
  end
end