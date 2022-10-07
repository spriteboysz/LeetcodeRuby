# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 19:58
# FilePath: P1382. 将二叉搜索树变平衡.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @return {TreeNode}
def balance_bst(root)
    @values = []
    dfs(root)
    create_bst(@values)
end

def dfs(root)
    return nil if root.nil?
    dfs(root.left)
    @values << root.val
    dfs(root.right)
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
    p balance_bst(TreeNode.create("[2,1,3]")).to_s
end
