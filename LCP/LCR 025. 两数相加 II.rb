# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 11:41
# FilePath: LCR 025. 两数相加 II.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    return l2 if l1.nil?
    return l1 if l2.nil?
    values1, values2, values, carry = [], [], [], 0
    until l1.nil?
        values1 << l1.val
        l1 = l1.next
    end
    until l2.nil?
        values2 << l2.val
        l2 = l2.next
    end
    while !values1.empty? or !values2.empty? or carry > 0
        carry += values1.pop unless values1.empty?
        carry += values2.pop unless values2.empty?
        values.unshift(carry % 10)
        carry /= 10
    end
    dummy = ListNode.new(-1)
    cur = dummy
    values.each { |value|
        cur.next = ListNode.new(value)
        cur = cur.next
    }
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p add_two_numbers(ListNode.create("[7,2,4,3]"), ListNode.create("[5,6,4]")).to_s
end


