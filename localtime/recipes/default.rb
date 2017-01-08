#
# Cookbook Name:: localtime
# Recipe:: default
#
# Copyright 2017, leesk8012
#
# All rights reserved - Do Not Redistribute
#

script 'extract_module' do
  interpreter "bash"
  code <<-EOH
    mv /etc/localtime /etc/localtime_org
    EOH
  not_if { ::File.exist?('/etc/localtime_org') }
end

execute 'setting_kst' do
  command 'ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime'
end
