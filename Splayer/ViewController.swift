//
//  ViewController.swift
//  Splayer
//
//  Created by Harry Tang on 2019/2/12.
//  Copyright © 2019 Harry Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var window: UIWindow?
    var btn: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor (red: 1.0, green: 0.5, blue: 1.0, alpha: 1.0)
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor .blue
        btn.text = "Button"
        btn.isHidden = false
        btn.center = CGPoint(x: 160, y: 285)
        btn.textAlignment = .center
        btn.isUserInteractionEnabled = true
        btn.font = UIFont.systemFont(ofSize: 14)
        btn.textColor = UIColor .red
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(self.btnClick))
        btn.addGestureRecognizer(tapGesture)
        
        view.addSubview(btn)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View Controller did disappear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View Controller did appear")
        btn.center = CGPoint(x: 160, y: 285)
    }

    @objc func btnClick() {
        self.present(ReactController(), animated: true, completion: nil)
//        window?.rootViewController = ReactController()
    }
}

