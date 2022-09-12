# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:20
# FilePath: 剑指 Offer 05. 替换空格.rb
# Description: 

# @param {String} s
# @return {String}
def replace_space(s)
    s.gsub!(" ", "%20")
    s # 避免s为空场景
end

p replace_space(s = "We are happy.")



