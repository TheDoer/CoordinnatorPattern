//
//  SecondTabCoordinator.swift
//  CoordinatorProject
//
//  Created by Adonis Rumbwere on 24/5/2022.
//

import UIKit

class SecondTabCoordinator: Coordinator {
   
    var rootViewController = UINavigationController()
    
    lazy var secondViewController: SecondViewController = {
        let vc = SecondViewController()
        vc.title = "Second"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([secondViewController], animated: false)
        
    }
}
