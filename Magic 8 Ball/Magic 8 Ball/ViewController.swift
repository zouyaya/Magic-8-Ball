//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by yangou on 2018/10/19.
//  Copyright © 2018年 hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let ballImageView = UIImageView()
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initializeView();
        
    }
    
    
    
    func initializeView(){
        
        let showLabel = UILabel(frame: CGRect(x: 10, y: 100, width: self.view.frame.size.width - 40, height: 50))
        showLabel.text = "请问我任何问题"
        showLabel.textColor = UIColor.red;
        showLabel.backgroundColor = UIColor.black;
        showLabel.textAlignment = NSTextAlignment.center
        self.view .addSubview(showLabel)
        
        

        ballImageView.frame = CGRect(x: (self.view.frame.size.width - 180)/2, y: 200, width:  180, height: 180)
        ballImageView.backgroundColor = UIColor.black
        self.view .addSubview(ballImageView);
        
        
        let pressButton = UIButton(frame: CGRect(x: (self.view.frame.size.width - 100)/2, y: self.view.frame.size.height - 150, width: 100, height: 50))
        pressButton.backgroundColor = UIColor.red
        pressButton .setTitleColor(UIColor.black, for: .normal)
        pressButton .setTitle("askMeAnswer", for: .normal)
        pressButton .addTarget(self, action: #selector(presToAnswer), for: .touchUpInside)
        self.view .addSubview(pressButton)
        
        
    }
    
    /**
     
     晃动手机触发时间
     */
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        initializeData()
        
    }
    
     @objc func presToAnswer() {
      
        initializeData()
     }
    
    
    func initializeData() {
        
        randomBallNumber = Int(arc4random_uniform(5));
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

