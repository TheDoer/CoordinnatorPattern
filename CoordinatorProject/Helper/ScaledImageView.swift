//
//  ScaledImageView.swift
//  CoordinatorProject
//
//  Created by Adonis Rumbwere on 23/5/2022.
//

import SwiftUI

struct ScaledImageView: View {
    let name: String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            
    }
}
