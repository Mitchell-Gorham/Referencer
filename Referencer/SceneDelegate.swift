//
//  SceneDelegate.swift
//  Referencer
//
//  Created by Mitchell Gorham on 10/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    //  Dummy Class Data Declaration
    
    let Sirius = StarClass (url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Sirius_A_and_B_artwork.jpg/960px-Sirius_A_and_B_artwork.jpg", name: "Sirius", const: "Canis Major", appMag: "-1.46", dist: "8.6",
                            notes: "Sirius is the brightest star in the night sky")
    let Messier = StarClass (url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Messier_78.jpg/743px-Messier_78.jpg", name: "Messier 78", const: "Orion", appMag: "+8.30", dist: "1350",
                             notes: "Messier 78 was discovered by Pierre Méchain in 1780")
    let Betelgeuse = StarClass (url: "https://images.immediate.co.uk/production/volatile/sites/4/2020/02/GettyImages-1198303044-3583e97.jpg", name: "Betelgeuse", const: "Orion", appMag: "0.50", dist: "700",
                                notes: "Pronounced Beetlejuice (Yes, as in the movie)")
    let Pleiades = StarClass (url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Pleiades_large.jpg/640px-Pleiades_large.jpg", name: "Pleiades", const: "Taurus", appMag: "+1.6", dist: "444",
                              notes: "Also known as The Seven Sisters")
    
    var starArray: StarCatalogViewModel = StarCatalogViewModel()    // Creates an empty StarCatalogViewModel
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        //  Add each of the previously created dummy classses to the empty StarCataLogViewModel array
        starArray.add(Sirius)
        starArray.add(Messier)
        starArray.add(Betelgeuse)
        starArray.add(Pleiades)
        
        let contentView = ContentView(starCatalog: starArray)
        
        
        // Create the SwiftUI view that provides the window contents.

        
        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

