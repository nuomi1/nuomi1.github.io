//
//  707-c2.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/28.
//

// Design Linked List
// https://leetcode.com/explore/learn/card/linked-list/210/doubly-linked-list/1294/
// https://leetcode.com/problems/design-linked-list/

// 设计链表
// https://leetcode-cn.com/leetbook/read/linked-list/fabl3/
// https://leetcode-cn.com/problems/design-linked-list/

// MARK: 双链表

class MyLinkedList {

    private class Node {
        let val: Int
        var prev: Node?
        var next: Node?

        init(val: Int, prev: Node? = nil, next: Node? = nil) {
            self.val = val
            self.prev = prev
            self.next = next
        }
    }

    private var size: Int
    private var head: Node?
    private var tail: Node?

    init() {
        size = 0
        head = Node(val: 0)
        tail = Node(val: 0)
        head?.next = tail
        tail?.prev = head
    }

    func get(_ index: Int) -> Int {
        guard 0 ..< size ~= index else { return -1 }

        var curr: Node?

        let leftIndex = index + 1
        let rightIndex = size - index

        if leftIndex < rightIndex {
            curr = head

            for _ in 0 ..< leftIndex {
                curr = curr?.next
            }
        } else {
            curr = tail

            for _ in 0 ..< rightIndex {
                curr = curr?.prev
            }
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

        var pred: Node?
        var succ: Node?

        let leftIndex = index
        let rightIndex = size - index

        if leftIndex < rightIndex {
            pred = head

            for _ in 0 ..< leftIndex {
                pred = pred?.next
            }

            succ = pred?.next
        } else {
            succ = tail

            for _ in 0 ..< rightIndex {
                succ = succ?.prev
            }

            pred = succ?.prev
        }

        size += 1
        let toAdd = Node(val: val)
        toAdd.prev = pred
        toAdd.next = succ
        pred?.next = toAdd
        succ?.prev = toAdd
    }

    func deleteAtIndex(_ index: Int) {
        guard 0 ..< size ~= index else { return }

        var pred: Node?
        var succ: Node?

        let leftIndex = index
        let rightIndex = size - index

        if leftIndex < rightIndex {
            pred = head

            for _ in 0 ..< leftIndex {
                pred = pred?.next
            }

            succ = pred?.next?.next
        } else {
            succ = tail

            for _ in 0 ..< rightIndex - 1 {
                succ = succ?.prev
            }

            pred = succ?.prev?.prev
        }

        size -= 1
        pred?.next = succ
        succ?.prev = pred
    }
}
