# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:58
# FilePath: P1491. 去掉最低工资和最高工资后的工资平均值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} salary
# @return {Float}
def average(salary)
    (salary.sum - salary.min - salary.max) * 1.0 / (salary.length - 2)
end

if __FILE__ == $PROGRAM_NAME
    p average(salary = [6000, 5000, 4000, 3000, 2000, 1000])
end
