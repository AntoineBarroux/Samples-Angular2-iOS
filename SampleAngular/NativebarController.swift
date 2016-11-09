//
//  NativebarController.swift
//  SampleAngular
//
//  Created by antoine on 09/11/2016.
//  Copyright © 2016 Cobaltians. All rights reserved.
//

import UIKit

class NativebarController: CobaltViewController, CobaltDelegate {
    
    //  MARK : LIFECYCLE
    
    required override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.setDelegate(self)
        NSLog("NativebarController init nibName")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NSLog("NativebarController init coder")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    //  MARK : DELEGATE
    func onUnhandledEvent(_ event: String, withData data: [AnyHashable : Any], andCallback callback: String) -> Bool{
        return false
    }
    
    func onUnhandledMessage(_ message: [AnyHashable : Any]) -> Bool{
        return false
    }
    
    func onUnhandledCallback(_ callback: String, withData data: [AnyHashable : Any]) -> Bool{
        return false
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
