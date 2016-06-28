//
//  ViewController.swift
//  first-firebase
//
//  Created by 中澤郁斗 on 2016/06/20.
//  Copyright © 2016年 中澤郁斗. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         //FIRAnalytics.logEventWithName("featuredevent", parameters: nil)
        // プロパティセット処理例 これを呼んだだけではユーザリストに入らない
        FIRAnalytics.setUserPropertyString("unregistered", forName: "register_status")
        
        // イベント送信処理例 ↑を呼んだ後にこれを呼ぶと、このイベントに対して、{"register_status": "unregistered"}のプロパティが付く
        FIRAnalytics.logEventWithName("sccontent", parameters: [
            "name": "tap",
            "full_text": "button"
            ])
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

