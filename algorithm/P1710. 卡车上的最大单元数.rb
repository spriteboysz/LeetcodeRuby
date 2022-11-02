# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-01 23:07
# FilePath: P1710. 卡车上的最大单元数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
    units = 0
    box_types.sort! { |a, b| b[1] <=> a[1] }
    box_types.each do |num, size|
        if truck_size >= num
            units += size * num
            truck_size -= num
        else
            units += size * truck_size
            break
        end
    end
    units
end

if __FILE__ == $PROGRAM_NAME
    p maximum_units([[5, 10], [2, 5], [4, 7], [3, 9]], 10)
end
