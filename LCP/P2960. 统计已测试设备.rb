# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-14 21:31
# FilePath: P2960. 统计已测试设备.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} battery_percentages
# @return {Integer}
def count_tested_devices(battery_percentages)
    cnt = 0
    battery_percentages.each_with_index { |percentage, i|
        if percentage > 0
            cnt += 1
            (i + 1...battery_percentages.length).each { |j|
                battery_percentages[j] -= 1
            }
        end
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_tested_devices(battery_percentages = [1, 1, 2, 1, 3])
end


