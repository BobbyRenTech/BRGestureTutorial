//
//  ViewController.swift
//  BRGestureTutorial
//
//  Created by Bobby Ren on 6/11/15.
//  Copyright (c) 2015 Bobby Ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap = UITapGestureRecognizer(target: self, action: "handleGesture:")
        self.view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleGesture(gesture: UIGestureRecognizer) {
        let location = gesture.locationInView(self.view)
        println("A gesture at \(location)")
        
        for view in self.view.subviews {
            if CGRectContainsPoint(view.frame, location) {
                println("view number \(view.tag)")
            }
        }
    }
}

