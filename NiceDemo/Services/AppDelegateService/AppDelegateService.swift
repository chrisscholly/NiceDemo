//
//  AppDelegateService.swift
//
//
//  Created by Serhii Kharauzov on 1/9/18.
//  Copyright © 2018 Serhii Kharauzov. All rights reserved.
//

import Foundation
import UIKit

/// Responsible for handling all business logic, that should be established at AppDelegate.
class AppDelegateService {
    
    // MARK: Public properties
    
    /// root coordinator
    var appCoordinator: AppCoordinator!
    /// root window of the app
    let window: UIWindow
    
    // MARK: Init
    
    init(window: UIWindow) {
        self.window = window
    }
    
    // MARK: Public methods
    
    func setupAppCoordinator() {
        window.rootViewController = BaseNavigationController()
        appCoordinator = AppCoordinator(navigationController: window.rootViewController as! UINavigationController)
        appCoordinator.start()
        window.makeKeyAndVisible()
    }
}
