# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:23
# FilePath: 剑指 Offer 24. 反转链表.rb
# Description: 

load 'common/ListNode.rb'

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    return head if head.nil? or head.next.nil?
    new_head = reverse_list(head.next)
    head.next.next = head
    head.next = nil
    new_head
end

p reverse_list(ListNode.create("[1,2,3,4,5]")).to_s



