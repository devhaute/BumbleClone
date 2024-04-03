//
//  HomeView.swift
//  BumbleClone
//
//  Created by kai on 4/3/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 8) {
            toolbar
            
            Spacer()
        }
        .background(Color.bumbleWhite)
    }
}

extension HomeView {
    private var toolbar: some View {
        ZStack {
            HStack(spacing: 0) {
                Image(systemName: "line.horizontal.3")
                    .padding(8)
                
                Image(systemName: "arrow.uturn.left")
                    .padding(8)
                
                Spacer()
                
                Image(systemName: "slider.horizontal.3")
                    .padding(8)
            }
            .font(.title2)
            .fontWeight(.medium)
            .foregroundStyle(.bumbleBlack)
            
            Text("bumble")
                .font(.title)
                .foregroundStyle(.bumbleYellow)
        }
    }
}

#Preview {
    HomeView()
}
