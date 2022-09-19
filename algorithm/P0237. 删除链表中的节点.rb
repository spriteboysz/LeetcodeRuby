# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:15
# FilePath: P0237. 删除链表中的节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
    node.val = node.next.val
    node.next = node.next.next
end

if __FILE__ == $PROGRAM_NAME
    p delete_node(ListNode.new(1))
end
