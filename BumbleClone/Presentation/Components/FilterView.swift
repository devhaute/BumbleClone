//
//  FilterView.swift
//  BumbleClone
//
//  Created by kai on 4/3/24.
//

import SwiftUI

struct FilterView: View {
    let options: [String]
    @State var selectedOption: String = "Everyone"
    @Namespace private var underlineNamespace
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 0) {
                ForEach(options, id: \.self) { option in
                    ZStack(alignment: .bottom) {
                        Text(option)
                            .frame(maxWidth: .infinity)
                            .padding(.bottom, 10)
                        
                        if selectedOption == option {
                            Rectangle()
                                .fill(.bumbleBlack)
                                .frame(height: 2)
                                .matchedGeometryEffect(
                                    id: "underline",
                                    in: underlineNamespace
                                )
                        }
                    }
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selectedOption = option
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FilterView(
        options: ["Everyone", "Trending"]
//        selectedOption: .constant("Everyone")
    )
}
