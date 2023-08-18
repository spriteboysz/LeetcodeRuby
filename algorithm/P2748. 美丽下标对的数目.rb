# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-17 23:18
# FilePath: P2748. 美丽下标对的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def count_beautiful_pairs(nums)
    def gcd(a, b)
        return a if b == 0
        gcd(b, a % b)
    end

    cnt = 0
    nums.each_index { |i|
        nums.each_index { |j|
            if j > i && gcd(nums[i].to_s[0].to_i, nums[j] % 10) == 1
                cnt += 1
            end
        }
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_beautiful_pairs(nums = [2, 5, 1, 4])
end


