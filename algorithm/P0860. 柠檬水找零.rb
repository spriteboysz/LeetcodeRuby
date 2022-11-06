# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 17:57
# FilePath: P0860. 柠檬水找零.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
    c05, c10 = 0, 0
    bills.each do |bill|
        if bill == 5
            c05 += 1
        elsif bill == 10
            if c05 > 0
                c05 -= 1
                c10 += 1
            else
                return false
            end
        elsif c10 > 0 && c05 > 0
            c10 -= 1
            c05 -= 1
        elsif c10 == 0 && c05 >= 3
            c05 -= 3
        else
            return false
        end
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p lemonade_change([5, 5, 10, 10, 20])
end
