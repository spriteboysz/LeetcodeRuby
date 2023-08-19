# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 00:01
# FilePath: P0701. 二叉搜索树中的插入操作.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def insert_into_bst(root, val)
    def dfs(root)
        return unless root
        dfs(root.left)
        @values << root.val
        dfs(root.right)
    end

    def create(left, right)
        return if left >= right
        mid = left + (right - left) / 2
        root = TreeNode.new(@values[mid])
        root.left = create(left, mid)
        root.right = create(mid + 1, right)
        root
    end

    @values = [val]
    dfs(root)
    @values.sort!
    create(0, @values.length)
end

if __FILE__ == $PROGRAM_NAME
    root = TreeNode.create("[40,20,60,10,30,50,70]")
    p insert_into_bst(root, 25).to_s
end


