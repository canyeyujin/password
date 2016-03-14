//
//  ViewController.swift
//  PayAlertView
//
//  Created by 余金 on 16/3/14.
//  Copyright © 2016年 fengzhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn:UIButton = UIButton(type: .System)
        btn.frame = CGRectMake(50, UIScreen.mainScreen().bounds.size.height - 80, UIScreen.mainScreen().bounds.size.width - 100, 40)
        btn.backgroundColor = UIColor.cyanColor()
        btn .setTitle("show", forState: .Normal);
        btn .addTarget(self, action: "click:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func click(btn:UIButton){
       
        
        
    let payAlert = PayAlert(frame: UIScreen.mainScreen().bounds)
        payAlert.show(self.view)
        payAlert.completeBlock = ({(password:String) -> Void in
         print("输入的密码是:" + password)
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

