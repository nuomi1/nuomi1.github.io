//
//  707-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/19.
//

// Design Linked List
// https://leetcode.com/explore/learn/card/linked-list/209/singly-linked-list/1290/
// https://leetcode.com/problems/design-linked-list/

// 设计链表
// https://leetcode-cn.com/leetbook/read/linked-list/jy291/
// https://leetcode-cn.com/problems/design-linked-list/

// MARK: 单链表

class MyLinkedList {

    private class Node {
        let val: Int
        var next: Node?

        init(val: Int, next: Node? = nil) {
            self.val = val
            self.next = next
        }
    }

    private var size: Int
    private var head: Node?

    init() {
        size = 0
        head = Node(val: 0)
    }

    func get(_ index: Int) -> Int {
        guard 0 ..< size ~= index else { return -1 }

        var curr = head

        for _ in 0 ..< index + 1 {
            curr = curr?.next
        }

        return curr!.val
    }

    func addAtHead(_ val: Int) {
        addAtIndex(0, val)
    }

    func addAtTail(_ val: Int) {
        addAtIndex(size, val)
    }

    func addAtIndex(_ index: Int, _ val: Int) {
        guard 0 ... size ~= index else { return }

        var pred = head

        for _ in 0 ..< index {
            pred = pred?.next
        }

        size += 1
        let toAdd = Node(val: val)
        toAdd.next = pred?.next
        pred?.next = toAdd
    }

    func deleteAtIndex(_ index: Int) {
        guard 0 ..< size ~= index else { return }

        var pred = head

        for _ in 0 ..< index {
            pred = pred?.next
        }

        size -= 1
        pred?.next = pred?.next?.next
    }
}
