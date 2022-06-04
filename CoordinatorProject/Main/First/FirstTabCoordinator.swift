//
//  FirstTabCoordinator.swift
//  CoordinatorProject
//
//  Created by Adonis Rumbwere on 24/5/2022.
//

import Foundation
import UIKit

class FirstTabCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    init(){
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var firstViewControllelr: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First Title"
        return vc
        
    }()
    
    func start() {
        rootViewController.setViewControllers([firstViewControllelr], animated: false)
        
    }
    
    
    
}
