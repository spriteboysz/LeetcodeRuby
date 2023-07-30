# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-29 22:01
# FilePath: P0836. 矩形重叠.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} rec1
# @param {Integer[]} rec2
# @return {Boolean}
def is_rectangle_overlap(rec1, rec2)
    [rec1[2], rec2[2]].min > [rec1[0], rec2[0]].max && [rec1[3], rec2[3]].min > [rec1[1], rec2[1]].max
end

if __FILE__ == $PROGRAM_NAME
    p is_rectangle_overlap(rec1 = [0, 0, 2, 2], rec2 = [1, 1, 3, 3])
end


