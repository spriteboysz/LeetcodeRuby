# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 17:53
# FilePath: P1315. 祖父节点值为偶数的节点和.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @return {Integer}
def sum_even_grandparent(root)
    def grandparent(root, n)
        return if root.nil?
        if n == 3
            @sum += root.val
        else
            grandparent(root.left, n + 1)
            grandparent(root.right, n + 1)
        end
    end

    def dfs(root)
        return if root.nil?
        grandparent(root, 1) if root.val.even?
        dfs(root.left)
        dfs(root.right)
    end

    @sum = 0
    dfs(root)
    @sum
end

if __FILE__ == $PROGRAM_NAME
    p sum_even_grandparent(TreeNode.create("[6,7,8,2,7,1,3,9,null,1,4,null,null,null,5]"))
end


