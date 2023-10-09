# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 10:47
# FilePath: LCR 121. 寻找目标值 - 二维数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def find_number_in2_d_plants(plants, target)
    plants.flatten.each do |num|
        return true if num == target
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p find_number_in2_d_array(plants = [[2,3,6,8],[4,5,8,9],[5,9,10,12]], target = 8)
end


