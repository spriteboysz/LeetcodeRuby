# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:20
# FilePath: P0021. 合并两个有序链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    return list2 if list1.nil?
    return list1 if list2.nil?
    if list1.val < list2.val
        list1.next = merge_two_lists(list1.next, list2)
        list1
    else
        list2.next = merge_two_lists(list1, list2.next)
        list2
    end
end

if __FILE__ == $PROGRAM_NAME
    p merge_two_lists(ListNode.create("[1,2,4]"), ListNode.create("[1,3,4]")).to_s
end
