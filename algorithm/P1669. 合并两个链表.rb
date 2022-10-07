# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 22:57
# FilePath: P1669. 合并两个链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} list1
# @param {Integer} a
# @param {Integer} b
# @param {ListNode} list2
# @return {ListNode}
def merge_in_between(list1, a, b, list2)
    cur = list1
    (0...a - 1).each { |_| cur = cur.next }
    node = cur.next
    (a...b + 1).each { |_| node = node.next }
    cur.next = list2
    cur = cur.next while cur.next
    cur.next = node
    list1
end

if __FILE__ == $PROGRAM_NAME
    list1 = ListNode.create("[0,1,2,3,4,5,6]")
    list2 = ListNode.create("[1000000,1000001,1000002,1000003,1000004]")
    p merge_in_between(list1, 2, 5, list2).to_s
end
