# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-01 22:49
# FilePath: LCP 72. 补给马车.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} supplies
# @return {Integer[]}
def supply_wagon(supplies)
    n = supplies.size
    until supplies.size <= n / 2
        index, value = 0, supplies[0] + supplies[1]
        (2...supplies.size).each { |i|
            if supplies[i - 1] + supplies[i] < value
                value = supplies[i - 1] + supplies[i]
                index = i - 1
            end
        }
        supplies[index] += supplies[index + 1]
        supplies[index + 1] = nil
        supplies.compact!
    end
    supplies
end

if __FILE__ == $PROGRAM_NAME
    p supply_wagon(supplies = [7, 3, 6, 1, 8])
    p supply_wagon(supplies = [6, 2, 2, 6, 9, 8, 5, 7])
end


