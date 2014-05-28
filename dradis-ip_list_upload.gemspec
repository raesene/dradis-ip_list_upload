# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dradis/ip_list_upload/version'

Gem::Specification.new do |spec|
  spec.name          = "dradis-ip_list_upload"
  spec.version       = Dradis::IpListUpload::VERSION
  spec.authors       = ["Rory McCune"]
  spec.email         = ["raesene@gmail.com"]
  spec.summary       = %q{This is a gem to work work Dradis to upload ip addresses as host nodes.}
  spec.description   = %q{This gem is an upload plugin for dradis to allow users to upload lists of IP addresses as host nodes.  Handy when you have a lot of hosts}
  spec.homepage      = "https://github.com/raesene/dradis-ip_list_upload"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
