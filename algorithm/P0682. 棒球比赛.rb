# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 09:34
# FilePath: P0682. 棒球比赛.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
    points = []
    operations.each do |operation|
        if operation == "+"
            points << points.last(2).sum
        elsif operation == "D"
            points << points.last * 2
        elsif operation == "C"
            points.pop
        else
            points << operation.to_i
        end
    end
    points.sum
end

if __FILE__ == $PROGRAM_NAME
    p cal_points(ops = %w[5 -2 4 C D 9 + +])
end
