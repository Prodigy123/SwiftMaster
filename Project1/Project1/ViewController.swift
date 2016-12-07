//
//  ViewController.swift
//  Project1
//
//  Created by 吉安 on 07/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var display: UILabel!
    var displayNum :Double? {didSet{updateUI()}}
    var isPlaying = false
    var Timer = Foundation.Timer()
    private func updateUI(){
        display!.text = String(format: "%.1f", displayNum!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        displayNum = 0.0
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func resetButton(_ sender: UIButton) {
        Timer.invalidate()
        displayNum = 0.0
        isPlaying = false
    }
    
    @IBAction func playDidTouch(_ sender: UIButton) {
        if isPlaying == false{
            Timer = Foundation.Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector (updateTime), userInfo: nil, repeats: true)
            isPlaying = true
        }
    }
    @IBAction func pauseDidTouch(_ sender: UIButton) {
        if isPlaying{
            Timer.invalidate()
            isPlaying = false
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc private func updateTime(){
        displayNum = displayNum! + 0.1
    }
    
}

