# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 23:21
# FilePath: 面试题 02.03. 删除中间节点.rb
# Description: 

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
    node.val = node.next.val
    node.next = node.next.next
end



