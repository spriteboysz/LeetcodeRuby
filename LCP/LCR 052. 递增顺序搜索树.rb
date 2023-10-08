# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:07
# FilePath: LCR 052. 递增顺序搜索树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {TreeNode}
def increasing_bst(root)
    def dfs(root)
        return if root.nil?
        dfs(root.left)
        @nodes << root
        dfs(root.right)
    end

    return nil if root.nil?
    @nodes = []
    dfs(root)
    @nodes.each_with_index { |node, i|
        break if i == @nodes.size - 1
        node.left = nil
        node.right = @nodes[i + 1]
    }
    @nodes[-1].left = nil
    @nodes[-1].right = nil
    @nodes.first
end

if __FILE__ == $PROGRAM_NAME
    p increasing_bst(TreeNode.create("[5,3,6,2,4,null,8,1,null,null,null,7,9]")).to_s
end


