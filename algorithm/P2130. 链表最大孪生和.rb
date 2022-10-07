# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 21:32
# FilePath: P2130. 链表最大孪生和.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Integer}
def pair_sum(head)
    values = []
    while head
        values << head.val
        head = head.next
    end
    maximum = 0
    (0...values.length / 2).each do |i|
        maximum = [maximum, values[i] + values[values.length - 1 - i]].max
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p pair_sum(ListNode.create("[4,2,2,3]"))
end
