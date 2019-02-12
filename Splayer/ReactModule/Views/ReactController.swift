//
//  ReactController.swift
//  Splayer
//
//  Created by Harry Tang on 2019/2/12.
//  Copyright © 2019 Harry Tang. All rights reserved.
//

import UIKit

class ReactController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        view.backgroundColor = UIColor (red: 0.7, green: 1.0, blue: 1.0, alpha: 1.0)
        NotificationCenter.default.addObserver(self, selector: #selector(self.btnClick), name: NSNotification.Name("dismiss-react-view-controller"), object: nil)

        let url = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let rootView = RCTRootView(
            bundleURL: url,
            moduleName: "HelloWorld",
            initialProperties: nil,
            launchOptions: nil
        )

        view = rootView
    }
    
    @objc func btnClick() {
        self.dismiss(animated: true, completion: nil)
    }
}
