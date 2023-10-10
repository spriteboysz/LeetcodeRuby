# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:45
# FilePath: LCR 174. 寻找二叉搜索树中的目标节点.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} cnt
# @return {Integer}
def find_target_node(root, cnt)
    def dfs(root)
        return if root.nil?
        dfs(root.left)
        @values << root.val
        dfs(root.right)
    end

    @values = []
    dfs(root)
    @values[-cnt]
end

if __FILE__ == $PROGRAM_NAME
    p find_target_node(root = TreeNode.create("[7, 3, 9, 1, 5]"), 2)
end


