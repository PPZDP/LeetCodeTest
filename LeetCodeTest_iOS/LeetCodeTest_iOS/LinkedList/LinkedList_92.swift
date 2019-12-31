//
//  LinkedList_92.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2019/12/28.
//  Copyright © 2019 lijiarui. All rights reserved.
//

import UIKit

/// https://leetcode-cn.com/problems/reverse-linked-list-ii/
class LinkedList_92: NSObject {
    
    
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        
        let res = ListNode(0)
        res.next = head
        var nodeHead = res
         
        //移动到M上一个点
        for  _ in 1..<m{
            nodeHead = nodeHead.next!
        }

        //起点M
        var newNode = nodeHead.next
        var preNode :ListNode?
        var nextNode :ListNode?
        let range = m...n
        for _ in range{
            //翻转M->n
            nextNode = newNode?.next
            newNode?.next = preNode
            preNode = newNode
            newNode = nextNode
        }
        
    
        nodeHead.next?.next = newNode
        
        nodeHead.next = preNode

        return res.next
    }
}
