# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 22:45
# FilePath: P0160. 相交链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head1
# @param {ListNode} head2
# @return {ListNode}
def getIntersectionNode(head1, head2)
    hash = Hash.new(0)
    cur = head1
    while cur
        hash[cur] = 1
        cur = cur.next
    end
    cur = head2
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
