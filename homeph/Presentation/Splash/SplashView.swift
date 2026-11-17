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
            Text("SplashView")
        }
        .task {
            try? await Task.sleep(for: .seconds(1.5))
            onFinish()
        }
    }
}
