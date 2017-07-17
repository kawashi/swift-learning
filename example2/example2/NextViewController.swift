//
//  NextViewController.swift
//  example2
//
//  Created by allen on 2017/07/17.
//  Copyright © 2017年 allen. All rights reserved.
//

import UIKit
import RealmSwift

class NextViewController: UIViewController {

    @IBOutlet weak var sessionKey: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        let userSession: UserSession? = realm.objects(UserSession).first
        
        sessionKey.text = userSession?.key
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
