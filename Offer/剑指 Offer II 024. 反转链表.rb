# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 23:06
# FilePath: 剑指 Offer II 024. 反转链表.rb
# Description:

load 'common/leetcode.rb'

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    return head if head.nil? || head.next.nil?

    new_head = reverse_list(head.next)
    head.next.next = head
    head.next = nil
    new_head
end

if __FILE__ == $PROGRAM_NAME
    head = ListNode.create('[1,2,3,4,5]')
    p reverse_list(head).to_s
end




