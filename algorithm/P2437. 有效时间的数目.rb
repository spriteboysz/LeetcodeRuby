# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/5 21:49
# FilePath: P2437. 有效时间的数目.rb
# Description:

load "common/leetcode.rb"

# @param {String} time
# @return {Integer}
def count_time(time)
    cnt = 0
    (0...24 * 60).each do |i|
        cur = format("%02d:%02d", i / 60, i % 60)
        flag = true
        (0..4).each do |j|
            if time[j] != "?" && time[j] != cur[j]
                flag = false
                break
            end
        end
        cnt += 1 if flag
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_time(time = "0?:0?")
    p count_time(time = "??:??")
end


