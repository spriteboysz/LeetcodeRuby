# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 11:46
# FilePath: P0222. 完全二叉树的节点个数.rb
# Description:

load "common/leetcode.rb"

def count_nodes(root)
    return 0 if root.nil?
    @cnt = 0

    def dfs(root)
        return if root.nil?
        @cnt += 1
        dfs(root.left)
        dfs(root.right)
    end
    dfs(root)
    @cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_nodes(TreeNode.create("[1,2,3,4,5,6]"))
end


