//
//  ContentView.swift
//  ios_project
//
//  Created by Andressa Albuquerque on 09/01/24.
//

import SwiftUI
import Flutter

struct ContentView: View {
    var body: some View {
        Button("Show Flutter!") {
            openFlutterApp()
        }
    }
    
    func openFlutterApp() {
        // Get the RootViewController.
        guard
            let windowScene = UIApplication.shared
                .connectedScenes
                .first(
                    where: {
                        $0.activationState == .foregroundActive && $0 is UIWindowScene
                    }
                ) as? UIWindowScene,
            let window = windowScene.windows.first(where: \.isKeyWindow),
            let rootViewController = window.rootViewController
        else { return }
        
        // Create the FlutterViewController without an existing FlutterEngine.
        let flutterViewController = FlutterViewController(project: nil, nibName: nil, bundle: nil)
        flutterViewController.modalPresentationStyle = .formSheet
        flutterViewController.isViewOpaque = false
        
        rootViewController.present(flutterViewController, animated: true)
    }
}

#Preview {
    ContentView()
}
