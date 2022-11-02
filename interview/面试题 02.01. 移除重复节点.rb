# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-02 23:45
# FilePath: 面试题 02.01. 移除重复节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def remove_duplicate_nodes(head)
    return head if head.nil?
    hash = Hash.new(false)
    hash[head.val] = true
    cur = head
    until cur.next.nil?
        if hash[cur.next.val]
            cur.next = cur.next.next
        else
            hash[cur.next.val] = true
            cur = cur.next
        end
    end
    head
end

if __FILE__ == $PROGRAM_NAME
    head = ListNode.new("[1,2,3,3,2,1]")
    p remove_duplicate_nodes(head).to_s
end
