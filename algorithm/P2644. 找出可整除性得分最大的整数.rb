# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 15:49
# FilePath: P2644. 找出可整除性得分最大的整数.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @param {Integer[]} divisors
# @return {Integer}
# @todo 超出时间限制
def max_div_score(nums, divisors)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    max_score, number = -1, divisors[0]
    divisors.uniq.sort.each do |divisor|
        score = 0
        hash.each_pair { |k, v|
            score += v if k % divisor == 0
        }
        if score > max_score
            max_score = score
            number = divisor
        end
    end
    number
end

if __FILE__ == $PROGRAM_NAME
    p max_div_score(nums = [20, 14, 21, 10], divisors = [5, 7, 5])
end


