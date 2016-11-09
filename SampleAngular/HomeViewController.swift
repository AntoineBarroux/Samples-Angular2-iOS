//
//  HomeViewController.swift
//  SampleAngular
//
//  Created by antoine on 27/10/2016.
//  Copyright © 2016 Cobaltians. All rights reserved.
//

import UIKit

class HomeViewController: CobaltViewController, CobaltDelegate {
    
    
    //  MARK : LIFECYCLE
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
        NSLog("passage dans init")
        self.setDelegate(self)
        Cobalt.setResourcePath(Bundle.main.resourcePath! + "/common/")
        initWithPage("index.html", andController: "default")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    //  MARK : DELEGATE
    
    func onUnhandledEvent(_ event: String, withData data: [AnyHashable : Any], andCallback callback: String) -> Bool{
        print("avant le if")
        if (event == "nativeCalcul"){
            NSLog("dans le if");
            if let nb1:Int = data["nb1"] as? Int{
                if let nb2:Int = data["nb2"] as? Int{
                    let result:Int = nb1 + nb2
                    let dataCallback:[AnyHashable:Any] = [
                        AnyHashable("result"): result
                    ]
                    self.sendCallback(callback, withData: dataCallback as NSObject!)
                    
                    return true
                }
            }
        }
        return false
    }
    
    func onUnhandledMessage(_ message: [AnyHashable : Any]) -> Bool{
        return false
    }
    
    func onUnhandledCallback(_ callback: String, withData data: [AnyHashable : Any]) -> Bool{
        return false
    }
}

