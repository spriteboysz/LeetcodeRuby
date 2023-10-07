# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 11:26
# FilePath: LCR 023. 相交链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
    visited = Hash.new(false)
    until headA.nil?
        visited[headA] = true
        headA = headA.next
    end
    until headB.nil?
        return headB if visited[headB]
        headB = headB.next
    end
    nil
end

if __FILE__ == $PROGRAM_NAME
    p getIntersectionNode(ListNode.create("[4,1,8,4,5]"), ListNode.create("[4,1,8,4,5]"))
end


