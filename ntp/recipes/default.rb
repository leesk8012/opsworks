#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2017, leesk8012
#
# All rights reserved - Do Not Redistribute
#

yum_package 'ntp' do
  action :install
end

service 'ntpd' do
  action [:enable, :start]
end
