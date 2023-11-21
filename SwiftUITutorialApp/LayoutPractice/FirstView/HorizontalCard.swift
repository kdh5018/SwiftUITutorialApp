//
//  HorizontalCard.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

struct HorizontalCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Hamlet")
                .font(.title)
                .padding(.bottom, 6)
            Text("Hamlet")
                .font(.system(size: 12))
                .padding(6)
                .background(Color.random.cornerRadius(10))
            Spacer()
                .frame(height: 20)
                .frame(maxWidth: .infinity)
            Image(systemName: "globe")
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding(8)
        .frame(maxWidth: .infinity)
        .background(Color.random.cornerRadius(20))
    }
}

#Preview {
    HorizontalCard()
}
