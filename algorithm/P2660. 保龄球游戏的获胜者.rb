# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 15:14
# FilePath: P2660. 保龄球游戏的获胜者.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} player1
# @param {Integer[]} player2
# @return {Integer}
def is_winner(player1, player2)
    def process(player)
        sum, n = 0, player.length
        flag = Array.new(n, false)
        player.each_with_index do |item, i|
            if item == 10
                flag[i + 1] = true if i + 1 < n
                flag[i + 2] = true if i + 2 < n
            end
            sum += item * (flag[i] ? 2 : 1)
        end
        sum
    end

    sum1, sum2 = process(player1), process(player2)
    if sum1 == sum2
        0
    else
        sum1 > sum2 ? 1 : 2
    end
end

if __FILE__ == $PROGRAM_NAME
    p is_winner(player1 = [4, 10, 7, 9], player2 = [6, 5, 2, 3]);
end


