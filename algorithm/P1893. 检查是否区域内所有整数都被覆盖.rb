# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 21:48
# FilePath: P1893. 检查是否区域内所有整数都被覆盖.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} ranges
# @param {Integer} left
# @param {Integer} right
# @return {Boolean}
def is_covered(ranges, left, right)
    nums = Array.new(51, 0)
    ranges.each do |v|
        (v[0]..v[1]).each { |num|
            nums[num] |= 1
        }
    end
    nums[left..right].sum == right - left + 1
end

if __FILE__ == $PROGRAM_NAME
    p is_covered(ranges = [[1, 10], [10, 20]], left = 21, right = 21)
    p is_covered(ranges = [[1, 2], [3, 4], [5, 6]], left = 2, right = 5)
    p is_covered(ranges = [[1, 50]], left = 1, right = 50)
end
