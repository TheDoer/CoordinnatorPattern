//
//  MainCoordinator.swift
//  CoordinatorProject
//
//  Created by Adonis Rumbwere on 23/5/2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var rootViewController = UITabBarController()
    
     var childCoordinator = [Coordinator]()
    
    init(){
        self.rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .lightGray
    }
    
    func start() {
        
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        self.childCoordinator.append(firstCoordinator)
        let firstViewController = firstCoordinator.rootViewController
        setup(vc: firstViewController,
              title: "First Tab",
              ImageName: "paperplane",
              SelectedImageName: "paperplane.fill")
        
        
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        self.childCoordinator.append(secondCoordinator)
        let secondViewController = secondCoordinator.rootViewController
        setup(vc: secondViewController,
              title: "Second Tab",
              ImageName: "bell",
              SelectedImageName: "bell.fill")
        
        self.rootViewController.viewControllers = [firstViewController, secondViewController]
        
    }
    
    func setup(vc: UIViewController, title: String, ImageName: String, SelectedImageName: String){
        let defaultImage = UIImage(systemName: ImageName)
        let selectedImage = UIImage(systemName: SelectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        vc.tabBarItem = tabBarItem
    }
     
    
}
