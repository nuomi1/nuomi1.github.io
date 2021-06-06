//
//  430-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/31.
//

// Flatten a Multilevel Doubly Linked List
// https://leetcode.com/explore/learn/card/linked-list/213/conclusion/1225/
// https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/

// 扁平化多级双向链表
// https://leetcode-cn.com/leetbook/read/linked-list/fw8v5/
// https://leetcode-cn.com/problems/flatten-a-multilevel-doubly-linked-list/

func flatten(_ head: Node?) -> Node? {
    var node = head

    var stack: [Node] = []

    while node != nil {
        if let childNode = node?.child {
            if let nextNode = node?.next {
                stack.append(nextNode)
            }

            node?.next = childNode
            childNode.prev = node
            node?.child = nil
        } else if node?.next == nil {
            if !stack.isEmpty {
                let previousNode = stack.removeLast()

                node?.next = previousNode
                previousNode.prev = node
            }
        }

        node = node?.next
    }

    return head
}
