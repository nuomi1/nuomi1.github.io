//
//  155-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/24.
//

// Min Stack
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/98/design/562/
// https://leetcode.com/problems/min-stack/

// 最小栈
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnkq37/
// https://leetcode-cn.com/problems/min-stack/

// MARK: 辅助栈

class MinStack {
    var normalStack: [Int]
    var minStack: [Int]

    init() {
        normalStack = []
        minStack = []
    }

    func push(_ x: Int) {
        normalStack.append(x)

        if minStack.last == nil || minStack.last! >= x {
            minStack.append(x)
        }
    }

    func pop() {
        let top = normalStack.removeLast()
        if top == getMin() {
            minStack.removeLast()
        }
    }

    func top() -> Int {
        return normalStack.last!
    }

    func getMin() -> Int {
        return minStack.last!
    }
}
