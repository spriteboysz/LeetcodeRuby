# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 17:42
# FilePath: P2265. 统计值等于子树平均值的节点数.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @return {Integer}
def average_of_subtree(root)
    def dfs(root)
        return 0, 0 if root.nil?
        left, right = dfs(root.left), dfs(root.right)
        value = left[0] + right[0] + root.val
        cnt = left[1] + right[1] + 1
        @ans += 1 if root.val == value / cnt
        [value, cnt]
    end

    @ans = 0
    dfs(root)
    @ans
end

if __FILE__ == $PROGRAM_NAME
    p average_of_subtree(TreeNode.create("[4,8,5,0,1,null,6]"))
end


