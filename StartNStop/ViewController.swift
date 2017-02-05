//
//  ViewController.swift
//  StartNStop
//
//  Created by David Hultgren on 2016-02-28.
//  Copyright © 2016 David Jansson Hultgren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var counter:Double = 0.0
    var active:Bool = false
    var timer = NSTimer()
    
    @IBOutlet weak var timerLabel: UILabel!
    
   
    
    @IBAction func play(sender: AnyObject) {
        
        
        if active == false {
            
            active = true
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "timerAction",  userInfo: nil, repeats: true)
            
            
            sender.setTitle("Pause", forState: .Normal)
            
        } else {
            active = false
            timer.invalidate()
            sender.setTitle("Play", forState: .Normal)
            
        }
        
        
    }
    
    
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        active = false
        counter = 0.0
        timerLabel.text = "\(counter)"
        
        
    }
    
    func timerAction() {
        
        counter += 0.1
        timerLabel.text = "\(counter)"
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

