import SwiftUI

struct TVSearchTab: View {
    @EnvironmentObject var appCoordinator: AppCoordinator
    
    var body: some View {
        NavigationView {
            TVSearchView(coordinator: TVSearchCoordinator())
        }
    }
}
