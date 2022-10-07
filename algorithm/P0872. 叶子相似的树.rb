# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 17:35
# FilePath: P0872. 叶子相似的树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
    values1, values2 = [], []
    dfs(root1, values1)
    dfs(root2, values2)
    values1.to_s == values2.to_s
end

def dfs(root, values)
    return if root.nil?
    if root.left.nil? && root.right.nil?
        values << root.val
    else
        dfs(root.left, values) unless root.left.nil?
        dfs(root.right, values) unless root.right.nil?
    end
end

if __FILE__ == $PROGRAM_NAME
    root1 = TreeNode.create("[1,2,3]")
    root2 = TreeNode.create("[1,3,2]")
    p leaf_similar(root1, root2)
end
