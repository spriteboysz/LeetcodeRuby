# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 17:47
# FilePath: P0938. 二叉搜索树的范围和.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
    @sum = 0
    dfs(root, low, high)
    @sum
end

def dfs(root, low, high)
    return 0 if root.nil?
    dfs(root.left, low, high)
    return if root.val > high
    @sum += root.val if root.val >= low
    dfs(root.right, low, high)
end

if __FILE__ == $PROGRAM_NAME
    p range_sum_bst(root = TreeNode.create("[10,5,15,3,7,13,18,1,null,6]"), low = 6, high = 10)
end
