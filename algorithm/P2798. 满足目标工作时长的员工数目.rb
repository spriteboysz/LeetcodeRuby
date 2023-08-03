# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-01 23:06
# FilePath: P2798. 满足目标工作时长的员工数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} hours
# @param {Integer} target
# @return {Integer}
def number_of_employees_who_met_target(hours, target)
    hours.count { |hour| hour >= target }
end

if __FILE__ == $PROGRAM_NAME
    p number_of_employees_who_met_target(hours = [0, 1, 2, 3, 4], target = 2)
end


