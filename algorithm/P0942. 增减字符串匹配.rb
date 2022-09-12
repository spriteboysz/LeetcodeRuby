# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 16:32
# FilePath: P0942. 增减字符串匹配.rb
# Description: 

# @param {String} s
# @return {Integer[]}
def di_string_match(s)
    left, right = 0, s.length
    nums = []
    s.chars.each { |c|
        if c == 'D'
            nums.append(right)
            right -= 1
        elsif c == 'I'
            nums.append(left)
            left += 1
        end
    }
    nums.append(left)
end

p di_string_match(s = "DDI")



