# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-22 23:00
# FilePath: 剑指 Offer 04. 二维数组中的查找.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def find_number_in2_d_array(matrix, target)
    matrix.flatten.each do |num|
        return true if num == target
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p find_number_in2_d_array([[1, 4, 7, 11, 15],
                               [2, 5, 8, 12, 19],
                               [3, 6, 9, 16, 22],
                               [10, 13, 14, 17, 24],
                               [18, 21, 23, 26, 30]], 4)
end


