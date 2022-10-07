# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 14:04
# FilePath: P0109. 有序链表转换二叉搜索树.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
    return nil if head.nil?
    @values = []
    while head
        @values << head.val
        head = head.next
    end
    create_bst(@values)
end

def create_bst(nums)
    return nil if nums.nil? || nums.empty?
    mid = nums.length >> 1
    root = TreeNode.new(nums[mid])
    root.left = create_bst(nums[0...mid])
    root.right = create_bst(nums[mid + 1..])
    root
end

if __FILE__ == $PROGRAM_NAME
    p sorted_list_to_bst(ListNode.create("[-10,-3,0,5,9]")).to_s
end
