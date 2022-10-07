# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 11:42
# FilePath: 剑指 Offer II 025. 链表中的两数相加.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    sum, nums1, nums2, carry = [], [], [], 0
    while l1
        nums1 << l1.val
        l1 = l1.next
    end
    while l2
        nums2 << l2.val
        l2 = l2.next
    end
    while !nums1.empty? || !nums2.empty? || carry > 0
        carry += nums1.pop unless nums1.empty?
        carry += nums2.pop unless nums2.empty?
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
    p add_two_numbers(ListNode.create("[2,4,3]"), ListNode.create("[5,6,4]")).to_s
end
