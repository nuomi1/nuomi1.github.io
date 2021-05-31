//
//  141-e2.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/11.
//  Updated by nuomi1 on 2021/5/20.
//

// Linked List Cycle
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/773/
// https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1212/
// https://leetcode.com/problems/linked-list-cycle/

// 环形链表
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnwzei/
// https://leetcode-cn.com/leetbook/read/linked-list/jbex5/
// https://leetcode-cn.com/problems/linked-list-cycle/

// MARK: Floyd's Cycle Finding Algorithm

func hasCycle(_ head: ListNode?) -> Bool {
    var fastNode = head
    var slowNode = head

    while slowNode != nil, fastNode != nil, fastNode?.next != nil {
        fastNode = fastNode?.next?.next
        slowNode = slowNode?.next

        if fastNode === slowNode {
            return true
        }
    }

    return false
}
