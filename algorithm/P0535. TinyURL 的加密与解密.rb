# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-28 22:29
# FilePath: P0535. TinyURL 的加密与解密.rb
# Description:

load "common/leetcode.rb"

require "base64"
require "uri"

HOST = "https://tinyurl.com/"

# Encodes a URL to a shortened URL.
#
# @param {string} longUrl
# @return {string}
def encode(long_url)
    "#{HOST}#{Base64.urlsafe_encode64 long_url}"
end

# Decodes a shortened URL to its original URL.
#
# @param {string} shortUrl
# @return {string}
def decode(short_url)
    uri = URI(short_url)
    Base64.urlsafe_decode64 uri.res[1..]
end

if __FILE__ == $PROGRAM_NAME
    url = "https://leetcode.com/problems/design-tinyurl"
    p decode(encode(url))
end
