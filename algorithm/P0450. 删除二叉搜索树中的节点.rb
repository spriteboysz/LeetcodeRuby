# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-21 23:58
# FilePath: P0450. 删除二叉搜索树中的节点.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} key
# @return {TreeNode}
def delete_node(root, key)
    @nodes = []

    def dfs(root, key)
        return if root.nil?
        dfs(root.left, key)
        @nodes << root.val if root.val != key
        dfs(root.right, key)
    end

    def create(left, right)
        return nil if left >= right
        mid = left + (right - left) / 2
        root = TreeNode.new(@nodes[mid])
        root.left = create(left, mid)
        root.right = create(mid + 1, right)
        root
    end

    dfs(root, key)
    # @nodes.each { |node| p node.val }
    create(0, @nodes.size)
end

if __FILE__ == $PROGRAM_NAME
    root = TreeNode.create("[5,3,6,2,4,null,7]")
    p delete_node(root, 3).to_s
end


