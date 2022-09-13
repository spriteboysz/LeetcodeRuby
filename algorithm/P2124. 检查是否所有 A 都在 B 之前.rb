# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 23:33
# FilePath: P2124. 检查是否所有 A 都在 B 之前.rb
# Description: 

# @param {String} s
# @return {Boolean}
def check_string(s)
    !s.include?("ba")
end

p check_string(s = "abab")
p check_string(s = "bbbb")



