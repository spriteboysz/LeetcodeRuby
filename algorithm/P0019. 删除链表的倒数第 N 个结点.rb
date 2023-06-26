# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 23:26
# FilePath: P0019. 删除链表的倒数第 N 个结点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    nodes = []
    until head.nil?
        nodes << head
        head = head.next
    end
    return nil if n > nodes.length || nodes.length == 1
    nodes.delete_at(-n)
    nodes.each_with_index { |node, i|
        next if i == nodes.length - 1
        node.next = nodes[i + 1]
    }
    nodes.last.next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p remove_nth_from_end(ListNode.create("[1,2,3,4,5]"), 2).to_s
end
