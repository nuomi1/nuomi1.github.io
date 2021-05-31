//
//  142-c2.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/21.
//

// Linked List Cycle II
// https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1214/
// https://leetcode.com/problems/linked-list-cycle-ii/

// 环形链表 II
// https://leetcode-cn.com/leetbook/read/linked-list/jjhf6/
// https://leetcode-cn.com/problems/linked-list-cycle-ii/

// MARK: 快慢指针

func detectCycle(_ head: ListNode?) -> ListNode? {
    var fastNode = head
    var slowNode = head

    while slowNode != nil, fastNode != nil, fastNode?.next != nil {
        fastNode = fastNode?.next?.next
        slowNode = slowNode?.next

        if fastNode === slowNode {
            var anotherNode = head

            while anotherNode !== slowNode {
                anotherNode = anotherNode?.next
                slowNode = slowNode?.next
            }

            return anotherNode
        }
    }

    return nil
}
