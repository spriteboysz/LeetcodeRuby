# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:15
# FilePath: 剑指 Offer 25. 合并两个排序的链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    return l2 if l1.nil?
    return l1 if l2.nil?
    if l1.val < l2.val
        l1.next = merge_two_lists(l1.next, l2)
        l1
    else
        l2.next = merge_two_lists(l1, l2.next)
        l2
    end
end

if __FILE__ == $PROGRAM_NAME
    p merge_two_lists(ListNode.create("[1,2,4]"), ListNode.create("[1,3,4]")).to_s
end
