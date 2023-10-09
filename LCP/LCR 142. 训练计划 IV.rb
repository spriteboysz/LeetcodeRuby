# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:37
# FilePath: LCR 142. 训练计划 IV.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def trainning_plan(l1, l2)
    return l1 if l2.nil?
    return l2 if l1.nil?
    nodes = []
    until l1.nil?
        nodes << l1
        l1 = l1.next
    end
    until l2.nil?
        nodes << l2
        l2 = l2.next
    end
    nodes.sort_by!{|node| node.val }
    nodes.each_with_index { |node, i|
        break if i == nodes.size - 1
        node.next = nodes[i + 1]
    }
    nodes[-1].next = nil
    nodes.first
end

if __FILE__ == $PROGRAM_NAME
    p trainning_plan(ListNode.create("[1,2,4]"), ListNode.create("[1,3,4]")).to_s
end


