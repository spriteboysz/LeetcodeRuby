# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 23:12
# FilePath: P1108. IP 地址无效化.rb
# Description: 

# @param {String} address
# @return {String}
def defang_i_paddr(address)
    address.gsub(".", "[.]")
end

p defang_i_paddr(address = "255.100.50.0")



