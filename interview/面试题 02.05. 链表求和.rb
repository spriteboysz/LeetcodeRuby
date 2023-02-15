# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 13:07
# FilePath: 面试题 02.05. 链表求和.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    dummy = ListNode.new(-1)
    p, carry = dummy, 0
    until l1.nil? and l2.nil? and carry.zero?
        carry += (l1.nil? ? 0 : l1.val) + (l2.nil? ? 0 : l2.val)
        p.next = ListNode.new(carry % 10)
        p = p.next
        carry /= 10
        l1 = l1.nil? ? nil : l1.next
        l2 = l2.nil? ? nil : l2.next
    end
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p add_two_numbers(ListNode.create("[7,1,6]"), ListNode.create("[5,9,2]")).to_s
end


