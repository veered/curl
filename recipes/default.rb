#
# Cookbook Name:: curl
# Recipe:: default
#
# Copyright 2011-2013, Lucas Hansen
#

unless platform? "windows"
  package "curl"
else

  windows_zipfile "#{Chef::Config[:file_cache_path]}/extracted_curl" do
    action :unzip
    source node["curl"]["url"]
    not_if { ::File.exists?(node["curl"]["dir"]) }
  end

  node["curl"]["url"].split("/").last[/(.*)\.zip/]
  cached_curl_dir = "#{Chef::Config[:file_cache_path]}/extracted_curl/#{$1}".gsub("/", "\\")
  curl_dir = node["curl"]["dir"].gsub("/", "\\")
  
  execute "xcopy /E /i #{cached_curl_dir} #{curl_dir}" do
    action :run
    not_if { ::File.exists?(node["curl"]["dir"]) }
  end

  remote_file "#{node["curl"]["dir"]}/curl-ca-bundle.crt" do
    source node["curl"]["certificate"]
  end
  
  ENV['PATH'] += ";#{node['curl']['dir']}"
  windows_path node['curl']['dir']

end  
