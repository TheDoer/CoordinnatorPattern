//
//  ApplicationCoordinator.swift
//  CoordinatorProject
//
//  Created by Adonis Rumbwere on 23/5/2022.
//

import SwiftUI
import UIKit
import Combine

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    var hasSeenOnboarding = CurrentValueSubject<Bool,Never>(false)
    var subscription = Set<AnyCancellable>()
    
    
    init(window:UIWindow){
        self.window = window
        
    }
    
    func start() {
        
        hasSeenOnboarding.sink { [weak self] hasSeen in
            if hasSeen {
                let mainCoordinator = MainCoordinator()
                mainCoordinator.start()
                self?.childCoordinators = [mainCoordinator]
                self?.window.rootViewController = mainCoordinator.rootViewController
                
            } else if let hasSeenOnboarding = self?.hasSeenOnboarding {
                let onboardingCoordinator = OnboardingCoordinator(hasSeenOnboarding: hasSeenOnboarding)
                onboardingCoordinator.start()
                self?.childCoordinators = [onboardingCoordinator]
                self?.window.rootViewController = onboardingCoordinator.rootViewController
                
                
            }
        }
        .store(in: &subscription)

        
        
        
    }
    
}
