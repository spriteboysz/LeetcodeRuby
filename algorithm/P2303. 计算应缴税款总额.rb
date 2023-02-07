# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/6 23:18
# FilePath: P2303. 计算应缴税款总额.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} brackets
# @param {Integer} income
# @return {Float}
def calculate_tax(brackets, income)
    tax, upper = 0, 0
    brackets.each do |bracket|
        if income <= bracket[0]
            tax += (income - upper) * bracket[1] / 100.0
            break
        end
        tax += (bracket[0] - upper) * bracket[1] / 100.0
        upper = bracket[0]
    end
    tax
end

if __FILE__ == $PROGRAM_NAME
    p calculate_tax(brackets = [[3, 50], [7, 10], [12, 25]], income = 10)
end


