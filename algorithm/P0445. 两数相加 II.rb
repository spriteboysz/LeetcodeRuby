# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 10:58
# FilePath: P0445. 两数相加 II.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    values1, values2, carry = [], [], 0
    while l1
        values1 << l1.val
        l1 = l1.next
    end
    while l2
        values2 << l2.val
        l2 = l2.next
    end
    sum = []
    while !values1.empty? || !values2.empty? || carry > 0
        carry += values1.pop unless values1.empty?
        carry += values2.pop unless values2.empty?
        sum << carry % 10
        carry /= 10
    end
    sum.reverse!
    dummy = ListNode.new(-1)
    cur = dummy
    sum.each do |val|
        cur.next = ListNode.new(val)
        cur = cur.next
    end
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p add_two_numbers(l1 = ListNode.create("[2,4,3]"), l2 = ListNode.create("[5,6,4]")).to_s
    p add_two_numbers(l1 = ListNode.create("[999]"), l2 = ListNode.create("[2]")).to_s
end
