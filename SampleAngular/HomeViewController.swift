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
        
        return false
    }
    
    func onUnhandledMessage(_ message: [AnyHashable : Any]) -> Bool{
        return false
    }
    
    func onUnhandledCallback(_ callback: String, withData data: [AnyHashable : Any]) -> Bool{
        return false
    }
}

