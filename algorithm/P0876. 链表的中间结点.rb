# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 23:55
# FilePath: P0876. 链表的中间结点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    fast, slow = head, head
    while fast&.next
        fast = fast.next.next
        slow = slow.next
    end
    slow
end

if __FILE__ == $PROGRAM_NAME
    p middle_node(ListNode.create("[1,2,3,4,5]")).to_s
    p middle_node(ListNode.create("[1,2,3,4,5,6]")).to_s
end




