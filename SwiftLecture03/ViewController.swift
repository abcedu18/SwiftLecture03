//  ViewController.swift
//  SwiftLecture03
//
//  Created by 走着唱着 on 2018/7/22.
//  Copyright © 2018年 anshangyuan. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var btnCofirm: UIButton!
    
    @IBOutlet weak var switch1: UISwitch!
    
   
    @IBOutlet weak var stepper1: UIStepper!
    

    @IBOutlet weak var slider1: UISlider!
    
    @IBOutlet weak var touchView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func click(_ sender: Any) {
        lbName.text="Tao Feng"
        
        let btnConfirm = sender as! UIButton
        
        btnConfirm.setTitle("OK", for: UIControlState.normal)
    }
    @IBAction func switchChanged(_ sender: Any) {
        let switch1 = sender as! UISwitch
        print(switch1.isOn)
    }
    

    @IBAction func stepperChanged(_ sender: Any) {
        
        self.slider1.value = Float(self.stepper1.value)
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        let doubleValue = self.slider1.value
        print(doubleValue)
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

