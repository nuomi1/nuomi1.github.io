//
//  138-c3.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/6/1.
//

// Copy List with Random Pointer
// https://leetcode.com/explore/learn/card/linked-list/213/conclusion/1229/
// https://leetcode.com/problems/copy-list-with-random-pointer/

// 复制带随机指针的链表
// https://leetcode-cn.com/leetbook/read/linked-list/fdi26/
// https://leetcode-cn.com/problems/copy-list-with-random-pointer/

// MARK: O(1) 空间的迭代

func copyRandomList(_ head: Node?) -> Node? {
    var node = head

    while node != nil {
        let nextNode = Node(node!.val)
        nextNode.next = node?.next
        node?.next = nextNode

        node = nextNode.next
    }

    node = head

    while node != nil {
        node?.next?.random = node?.random?.next

        node = node?.next?.next
    }

    var oldNode = head
    var newNode = head?.next

    let newHead = newNode

    while oldNode != nil {
        oldNode?.next = oldNode?.next?.next
        newNode?.next = newNode?.next?.next

        oldNode = oldNode?.next
        newNode = newNode?.next
    }

    return newHead
}
