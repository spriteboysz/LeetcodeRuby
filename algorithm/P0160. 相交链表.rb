# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 22:45
# FilePath: P0160. 相交链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
    hash = Hash.new(0)
    cur = headA
    while cur
        hash[cur] = 1
        cur = cur.next
    end
    cur = headB
    while cur
        if hash[cur] == 1
            return cur
        else
            hash[cur] = 1
        end
        cur = cur.next
    end
end

if __FILE__ == $PROGRAM_NAME
    p getIntersectionNode(ListNode.create("[1,9,1,2,4]"), ListNode.create("[3,2,4]"))
end
