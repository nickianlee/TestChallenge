//
//  ChatViewController.swift
//  TestChallenge
//
//  Created by nicholaslee on 07/04/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

import UIKit
import Firebase
import JSQMessagesViewController

var channelRef: FIRDatabaseReference?
var userName: Name?{
didSet{
    
    title.userName?.name

    }
}

class ChatViewController: JSQMessagesViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    

}
