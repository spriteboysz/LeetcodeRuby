# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-10 21:51
# FilePath: P1646. 获取生成数组中的最大值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def get_maximum_generated(n)
    nums = []
    (0..n).each do |i|
        nums[i] = i if i <= 1
        nums[i] = nums[i / 2] if i % 2 == 0
        nums[i] = nums[i / 2] + nums[i / 2 + 1] if i % 2 == 1
    end
    nums.max
end

if __FILE__ == $PROGRAM_NAME
    p get_maximum_generated(7)
end


