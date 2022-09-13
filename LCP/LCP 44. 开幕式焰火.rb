# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 23:45
# FilePath: LCP 44. 开幕式焰火.rb
# Description: 

load 'common/TreeNode.rb'

# @param {TreeNode} root
# @return {Integer}

def dfs(root)
    return if root.nil?
    @color.append(root.val)
    dfs(root.left)
    dfs(root.right)
end

def num_color(root)
    @color = []
    dfs(root)
    @color.uniq.length
end

root = "[1,3,2,1,null,2]"
p num_color(TreeNode.create(root))



