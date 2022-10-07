# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 16:04
# FilePath: P0508. 出现次数最多的子树元素和.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[]}
def find_frequent_tree_sum(root)
    @hash, @max = Hash.new(0), 0
    dfs(root)
    @hash.keys.select { |k| @hash[k] == @max }
end

def dfs(root)
    return 0 if root.nil?
    sum = root.val + dfs(root.left) + dfs(root.right)
    @hash[sum] += 1
    @max = [@hash[sum], @max].max
    sum
end

if __FILE__ == $PROGRAM_NAME
    p find_frequent_tree_sum(TreeNode.create("[5,2,-5]"))
    p find_frequent_tree_sum(TreeNode.create("[5,2,-3]"))
end
