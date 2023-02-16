# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 19:19
# FilePath: P2443. 反转之后的数字和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Boolean}
def sum_of_number_and_reverse(num)
    (num..0).step(-1).each do |i|
        return true if i + i.to_s.reverse.to_i == num
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p sum_of_number_and_reverse(181)
end


