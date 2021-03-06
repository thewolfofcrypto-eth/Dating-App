//
//  DatingAppApp.swift
//  DatingApp
//
//  Created by Radley Hoang on 31/10/2021.
//

import SwiftUI

@main
struct DatingAppApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    init() {
        // This init function is didFinishLaunchWithOptions in UIKit
        RunLoop.current.run(until: NSDate(timeIntervalSinceNow: 1.5) as Date)
        Helper.configureToastView()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }.onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                print("App State : Background")
            case .inactive:
                print("App State : Inactive")
            case .active:
                print("App State : Active")
            @unknown default:
                print("App State : Unknown")
            }
        }
    }
}
