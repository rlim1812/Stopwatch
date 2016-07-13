//
//  ViewController.swift
//  Stopwatch
//
//  Created by Ryan Lim on 7/12/16.
//  Copyright © 2016 Ryan Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var time = 0

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate() 
    }
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        time = 0
        resultLabel.text = String(time)
    }
    
    func increaseTimer(){
        time++
        resultLabel.text = String(time)
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

