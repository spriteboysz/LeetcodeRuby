# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:45
# FilePath: P2042. 检查句子中的数字是否递增.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
    nums = s.split.map(&:to_i).select { |num| num != 0 }
    nums.uniq.length == nums.length && nums == nums.sort
end

if __FILE__ == $PROGRAM_NAME
    p are_numbers_ascending(s = "hello world 5 x 5")
    p are_numbers_ascending("sunset is at 7 51 pm overnight lows will be in the low 50 and 60 s")
end
