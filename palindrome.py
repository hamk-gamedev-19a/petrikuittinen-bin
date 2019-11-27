#!/usr/bin/python3


def is_palindrome(s):
    """return true if s is palindrome"""
    s = s.lower()
    return s == s[::-1]


s = input("Give me a string?")
if is_palindrome(s):
    print(s, "is palindrome")
else:
    print(s, "is not a palindrome")
