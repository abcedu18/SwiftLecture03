//
//  ViewController.swift
//  SwiftLecture03
//
//  Created by 走着唱着 on 2018/7/22.
//  Copyright © 2018年 anshangyuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var btnConfirm: UIButton!
    
    @IBOutlet weak var touchView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func click(_ sender: Any) {
        lbName.text="Tao Feng"
//        
//      let button = sender as! UIButton;
//        
//      button.setTitle("OK", for: UIControlState.normal)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
        
        if let touch=touches.first{
            let loc=touch.location(in:self.touchView)
            
            print("\(loc)")
            
            if(self.touchView.bounds.contains(loc)){
                self.touchView.backgroundColor=UIColor.red
            }else{
                self.touchView.backgroundColor=UIColor.blue
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      print("touchesEnded")
       
    }
    
}

