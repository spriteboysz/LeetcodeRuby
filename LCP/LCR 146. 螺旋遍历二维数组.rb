# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:07
# FilePath: LCR 146. 螺旋遍历二维数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} array
# @return {Integer[]}
def spiral_array(array)
    nums = []
    until array.empty?
        nums << array.shift
        array = array.transpose
        array.reverse!
    end
    nums.flatten
end

if __FILE__ == $PROGRAM_NAME
    p spiral_array(array  = [[1,2,3,4],[12,13,14,5],[11,16,15,6],[10,9,8,7]])
end


