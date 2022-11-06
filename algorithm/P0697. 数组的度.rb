# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 16:10
# FilePath: P0697. 数组的度.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
    end
    degree = hash.values.max
    return 1 if degree == 1
    elements = nums.filter { |el| hash[el] == degree }.uniq
    minimum = nums.size + 1
    elements.each do |el|
        minimum = [minimum, nums.rindex(el) - nums.index(el)].min
    end
    minimum + 1
end

if __FILE__ == $PROGRAM_NAME
    p find_shortest_sub_array([1, 2, 2, 3, 1, 4, 2])
end
