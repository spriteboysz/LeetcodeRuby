# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-21 23:47
# FilePath: P2566. 替换一个数字后的最大差值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Integer}
def min_max_difference(num)
    maximum, s = num, num.to_s
    s.each_char do |c|
        if c != '9'
            maximum = s.gsub(c, '9').to_i
            break
        end
    end
    minimum = s.gsub(s[0], '0').to_i
    maximum - minimum
end

if __FILE__ == $PROGRAM_NAME
    p min_max_difference(11891)
    p min_max_difference(999)
end


