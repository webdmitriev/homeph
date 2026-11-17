//
//  SplashView.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import SwiftUI

struct SplashView: View {
    let onFinish: () -> Void

    var body: some View {
        VStack {
            Spacer()
            
            Image("logotype")
                .resizable()
                .scaledToFit()
                .frame(width: 230)
            
            Spacer()
            
            Text("Version 1.0")
                .frame(maxWidth: .infinity)
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.appBlack.opacity(0.7))
        }
        .padding(.horizontal, AppConstants.Layout.offsetPage)
        .task {
            try? await Task.sleep(for: .seconds(1.8))
            self.onFinish()
        }
    }
}
