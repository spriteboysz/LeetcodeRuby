# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:18
# FilePath: LCR 136. 删除链表的节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def delete_node(head, val)
    dummy = ListNode.new(-1, head)
    cur = dummy
    until cur.next.nil?
        if cur.next.val == val
            cur.next = cur.next.next
        else
            cur = cur.next
        end
    end
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p delete_node(head=ListNode.create("[4,5,1,9]"), 5).to_s
    p delete_node(head=ListNode.create("[4,5,1,9]"), 4).to_s
    p delete_node(head=ListNode.create("[4,5,1,9]"), 9).to_s
end


