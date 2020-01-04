//
//  ViewController.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2019/12/28.
//  Copyright © 2019 lijiarui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test  = LinkedList_203()
        
        let node = ListNode(10)
        let node1 = ListNode(2)
        let node2 = ListNode(2)
        let node3 = ListNode(2)
        let node4 = ListNode(3)
        node.next = node1;
        node.next?.next = node2
        node.next?.next?.next = node3
        node.next?.next?.next?.next = node4
//        node.next?.next?.next?.next = node1
        
        
//        let node2 = ListNode(1)
//        node2.next = ListNode(3);
//        node2.next?.next = ListNode(4)
//        node2.next?.next?.next = ListNode(13)
        
        
        
        var newNode = test.removeElements(node,2)
        
        
//        print(newNode)

        while newNode != nil {
            print("val:\(newNode!.val) ")
            newNode = newNode?.next;
        }
        
        
     
    }
    
    //     func printNode(_ node: ListNode) -> Void {
    //          var headNode = node
    //
    //
    //          while headNode != nil {
    //              print("val:\(headNode.val) ")
    //              headNode = headNode.next ?? 1;
    //          }
    //      }
    
}

