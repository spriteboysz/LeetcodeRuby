# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 19:55
# FilePath: P2095. 删除链表的中间节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def delete_middle(head)
    return nil if head.next.nil?
    fast, slow, pre = head, head, nil
    while fast && fast.next
        fast = fast.next.next
        pre = slow
        slow = slow.next
    end
    pre.next = pre.next.next
    head
end

if __FILE__ == $PROGRAM_NAME
    p delete_middle(ListNode.create("[1,2,3,4]")).to_s
    p delete_middle(ListNode.create("[1,2]")).to_s
end
