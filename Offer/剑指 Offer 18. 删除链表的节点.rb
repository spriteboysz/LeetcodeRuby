# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 17:25
# FilePath: 剑指 Offer 18. 删除链表的节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def delete_node(head, val)
    return head.next if head.val == val
    cur = head
    while cur.next
        if !cur.next.nil? && cur.next.val == val
            cur.next = cur.next.next
            break
        else
            cur = cur.next
        end
    end
    head
end

if __FILE__ == $PROGRAM_NAME
    p delete_node(ListNode.create("[4,5,1,9]"), 5).to_s
end
