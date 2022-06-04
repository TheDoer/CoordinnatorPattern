//
//  OnboardingView.swift
//  CoordinatorProject
//
//  Created by Adonis Rumbwere on 23/5/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    var doneRequested: () -> ()
    
    var body: some View {
        TabView{
            ScaledImageView(name: "undraw_Mobile_pay_re_sjb8")
                .tag(0)
            ScaledImageView(name:"undraw_navigator_a479")
                .tag(1)
            ScaledImageView(name:"undraw_product_iteration_kjok")
                .tag(2)
            Button("Done"){
                doneRequested()
                
            }
           
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black)
        .ignoresSafeArea(.all)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(doneRequested: {})
    }
}
