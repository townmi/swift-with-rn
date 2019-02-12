//
//  React2Native.swift
//  Splayer
//
//  Created by Harry Tang on 2019/2/12.
//  Copyright © 2019 Harry Tang. All rights reserved.
//

import Foundation

@objc(React2Native)
class React2Native: RCTEventEmitter {
    @objc override func supportedEvents() -> [String]! {
        return ["EventReminder"]
    }
    
    @objc func addEvent(_ name: String, location: String, date: NSNumber, callback: RCTResponseSenderBlock) -> Void {
        NSLog("%@ %@ %@", name, location, date);
        NotificationCenter.default.post(Notification(name: NSNotification.Name("dismiss-react-view-controller"), object: nil))
        let ret:[Any] = [name, location]
        callback(ret)
        self.sendEvent(withName: "EventReminder", body: ret)
    }
    
//    @objc override func constantsToExport() -> [AnyHashable : Any]! {
//        return [:]
//    }
}
