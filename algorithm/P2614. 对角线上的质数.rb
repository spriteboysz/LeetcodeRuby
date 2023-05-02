# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 16:48
# FilePath: P2614. 对角线上的质数.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[][]} nums
# @return {Integer}
def diagonal_prime(nums)
    def prime?(num)
        return false if num == 1
        (2..Math.sqrt(num)).each do |x|
            return false if num % x == 0
        end
        true
    end

    diagonal = []
    nums.each_with_index do |row, i|
        diagonal << row[i] << row[row.length - 1 - i]
    end
    ans = diagonal.uniq.select { |x| prime?(x) }.max
    ans.nil? ? 0 : ans
end

if __FILE__ == $PROGRAM_NAME
    p diagonal_prime(nums = [[1, 2, 3], [5, 17, 7], [9, 11, 10]])
end


