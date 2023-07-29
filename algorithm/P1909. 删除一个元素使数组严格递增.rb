# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-28 22:27
# FilePath: P1909. 删除一个元素使数组严格递增.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean}
def can_be_increasing(nums)
    def check(nums)
        nums.uniq == nums && nums.sort == nums
    end

    pos = 0
    nums.each_with_index { |num, i|
        next if i == 0
        if nums[i - 1] >= num
            pos = i - 1
            break
        end
    }
    nums1 = nums[0...pos] + nums[pos + 1..-1]
    nums2 = nums[0...pos + 1] + nums[pos + 2..-1]
    check(nums1) || check(nums2)
end

if __FILE__ == $PROGRAM_NAME
    p can_be_increasing(nums = [1, 2, 10, 5, 7])
    p can_be_increasing(nums = [105, 924, 32, 968])
end


