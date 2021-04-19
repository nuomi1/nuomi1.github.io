//
//  20-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/2/2.
//

// Valid Parentheses
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/99/others/721/
// https://leetcode.com/problems/valid-parentheses/

// 有效的括号
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnbcaj/
// https://leetcode-cn.com/problems/valid-parentheses/

// MARK: Stacks

func isValid(_ s: String) -> Bool {
    var stack: [Character] = []

    let lhs: [Character] = ["(", "[", "{"]
    let rhs: [Character] = [")", "]", "}"]

    for character in s {
        if lhs.contains(character) {
            stack.append(character)
            continue
        }

        if rhs.contains(character) {
            switch (stack.last, character) {
            case ("(", ")"), ("[", "]"), ("{", "}"):
                stack.removeLast()
            default:
                return false
            }
        }
    }

    return stack.isEmpty
}
