//
//  LeosapplicationApp.swift
//  Leosapplication

import SwiftUI

@main
struct LeosapplicationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
