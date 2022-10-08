# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 20:58
# FilePath: P0024. 两两交换链表中的节点.rb
# Description:

load "common/leetcode.rb"
# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
    return head if head.nil? || head.next.nil?
    new_head = head.next
    head.next = swap_pairs(new_head.next)
    new_head.next = head
    new_head
end

if __FILE__ == $PROGRAM_NAME
    p swap_pairs(ListNode.create("[1,2,3,4]")).to_s
    p swap_pairs(ListNode.create("[1,2,3]")).to_s
end
