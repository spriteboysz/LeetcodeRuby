# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 22:44
# FilePath: P0303. 区域和检索 - 数组不可变.rb
# Description:

load "common/leetcode.rb"

class NumArray

    #     :type nums: Integer[]
    def initialize(nums)
        @pre_sum, cur = [], 0
        nums.each do |num|
            cur += num
            @pre_sum << cur
        end
        p @pre_sum
    end

    #     :type left: Integer
    #     :type right: Integer
    #     :retype: Integer
    def sum_range(left, right)
        left == 0 ? @pre_sum[right] : @pre_sum[right] - @pre_sum[left - 1]
    end

end

if __FILE__ == $PROGRAM_NAME
    num_array = NumArray.new([-2, 0, 3, -5, 2, -1])
    p num_array.sum_range(0, 2) # return 1 ((-2) + 0 + 3)
    p num_array.sum_range(2, 5) # return -1 (3 + (-5) + 2 + (-1))
    p num_array.sum_range(0, 5) # return -3 ((-2) + 0 + 3 + (-5) + 2 + (-1))
end
