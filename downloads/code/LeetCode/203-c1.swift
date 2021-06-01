//
//  203-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/25.
//

// Remove Linked List Elements
// https://leetcode.com/explore/learn/card/linked-list/219/classic-problems/1207/
// https://leetcode.com/problems/remove-linked-list-elements/

// 移除链表元素
// https://leetcode-cn.com/leetbook/read/linked-list/f9izv/
// https://leetcode-cn.com/problems/remove-linked-list-elements/

// MARK: 哨兵节点

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    let sentinelHead: ListNode? = ListNode(0)
    sentinelHead?.next = head

    var previousNode = sentinelHead
    var currentNode = head

    while currentNode != nil {
        if currentNode?.val == val {
            previousNode?.next = currentNode?.next
        } else {
            previousNode = currentNode
        }

        currentNode = currentNode?.next
    }

    return sentinelHead?.next
}
