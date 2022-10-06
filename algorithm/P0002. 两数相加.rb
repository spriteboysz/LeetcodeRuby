# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-06 23:55
# FilePath: P0002. 两数相加.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    carry = 0
    dummy = ListNode.new(-1)
    cur = dummy
    while l1 || l2 || carry != 0
        if l1
            carry += l1.val
            l1 = l1.next
        end

        if l2
            carry += l2.val
            l2 = l2.next
        end
        cur.next = ListNode.new(carry % 10)
        cur = cur.next
        carry /= 10
    end
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p add_two_numbers(l1 = ListNode.create("[9,9,9,9,9,9,9]"), l2 = ListNode.create("[9,9,9,9]")).to_s
end
