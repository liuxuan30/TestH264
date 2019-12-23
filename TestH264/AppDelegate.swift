//
//  AppDelegate.swift
//  TestH264
//
//  Created by Xuan Liu on 2019/12/23.
//  Copyright © 2019 Xuan Liu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        if let filepath = Bundle.main.path(forResource: "frames", ofType: "h264") {
            do {
                let contents = try Data(contentsOf: URL(fileURLWithPath: filepath), options: .mappedIfSafe)
                print("loaded")
                let bytes = [UInt8](contents)
                print("converted")
            } catch {
                print("Load content error: \(error)")
            }
        } else {
            print("Load content error: file not exists")
        }

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

