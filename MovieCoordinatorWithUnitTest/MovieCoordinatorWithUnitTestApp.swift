import SwiftUI

@main
struct MovieCoordinatorWithUnitTestApp: App {
    @StateObject private var appCoordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            appCoordinator.currentView
                .environmentObject(appCoordinator)
        }
    }
}
