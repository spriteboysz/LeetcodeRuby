# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 22:04
# FilePath: P2446. 判断两个事件是否存在冲突.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} event1
# @param {String[]} event2
# @return {Boolean}
def have_conflict(event1, event2)
    event1[0] <= event2[1] && event1[1] >= event2[0]
end

if __FILE__ == $PROGRAM_NAME
    p have_conflict(event1 = %w[01:15 02:00], event2 = %w[02:00 03:00])
    p have_conflict(event1 = %w[10:00 11:00], event2 = %w[14:00 15:00])
end


