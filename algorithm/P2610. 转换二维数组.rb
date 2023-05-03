# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 20:00
# FilePath: P2610. 转换二维数组.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @return {Integer[][]}
def find_matrix(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
    end
    matrix = Array.new(hash.values.max) { Array.new }
    hash.each do |k, v|
        (0...v).each { |i|
            matrix[i] << k
        }
    end
    matrix
end

if __FILE__ == $PROGRAM_NAME
    p find_matrix(nums = [1, 3, 4, 1, 2, 3, 1])
end


