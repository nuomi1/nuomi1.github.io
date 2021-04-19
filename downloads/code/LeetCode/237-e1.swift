//
//  237-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/6.
//

// Delete Node in a Linked List
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/553/
// https://leetcode.com/problems/delete-node-in-a-linked-list/

// 删除链表中的节点
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnarn7/
// https://leetcode-cn.com/problems/delete-node-in-a-linked-list/

// MARK: Swap with Next Node

func deleteNode(_ node: ListNode?) {
    guard let next = node?.next else { return }

    node?.val = next.val
    node?.next = next.next
}
