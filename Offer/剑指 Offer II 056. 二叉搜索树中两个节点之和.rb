# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 20:54
# FilePath: 剑指 Offer II 056. 二叉搜索树中两个节点之和.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
    @values = []
    dfs(root)
    left, right = 0, @values.length - 1
    while left < right
        if @values[left] + @values[right] < k
            left += 1
        elsif @values[left] + @values[right] > k
            right -= 1
        else
            return true
        end
    end
    false
end

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @values << root.val
    dfs(root.right)
end

if __FILE__ == $PROGRAM_NAME
    p find_target(TreeNode.create("[8,6,10,5,7,9,11]"), 12)
    p find_target(TreeNode.create("[8,6,10,5,7,9,11]"), 22)
end
