# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:34
# FilePath: LCR 141. 训练计划 III.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def trainning_plan(head)
    return head if head.nil? or head.next.nil?
    nodes = []
    until head.nil?
        nodes << head
        head = head.next
    end
    nodes.reverse!
    nodes.each_with_index { |node, i|
        break if i == nodes.size - 1
        node.next = nodes[i + 1]
    }
    nodes[-1].next = nil
    nodes.first
end

if __FILE__ == $PROGRAM_NAME
    p trainning_plan(head = ListNode.create("[1,2,3,4,5]")).to_s
end


