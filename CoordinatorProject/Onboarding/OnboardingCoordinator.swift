//
//  OnboardingCoordinator.swift
//  CoordinatorProject
//
//  Created by Adonis Rumbwere on 23/5/2022.
//

import Foundation
import SwiftUI
import Combine

class OnboardingCoordinator: Coordinator {
    
    var rootViewController = UIViewController()
    
    var hasSeenOnboarding: CurrentValueSubject<Bool,Never>
    init(hasSeenOnboarding: CurrentValueSubject<Bool, Never>) {
        self.hasSeenOnboarding = hasSeenOnboarding
    }
    
    func start() {
        let view = OnboardingView { [weak self] in
            self?.hasSeenOnboarding.send(true)
            
        }
        rootViewController = UIHostingController(rootView: view)
        
    }
}
