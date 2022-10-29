# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-29 23:47
# FilePath: P2325. 解密消息.rb
# Description:

load "common/leetcode.rb"

# @param {String} key
# @param {String} message
# @return {String}
def decode_message(key, message)
    hash, index = Hash.new(-1), 0
    key.chars.each do |c|
        next if c == " " || hash[c] >= 0
        hash[c] = index
        index += 1
    end
    ss = ""
    message.chars.each do |c|
        ss << (c == " " ? c : (hash[c] + 97).chr)
    end
    ss
end

if __FILE__ == $PROGRAM_NAME
    p decode_message(key = "the quick brown fox jumps over the lazy dog",
                     message = "vkbs bs t suepuv")
    p decode_message("eljuxhpwnyrdgtqkviszcfmabo",
                     message = "zwx hnfx lqantp mnoeius ycgk vcnjrdb")
end
