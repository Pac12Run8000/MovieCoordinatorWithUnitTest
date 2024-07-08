import SwiftUI

struct TrendingShowsTab: View {
    @EnvironmentObject var appCoordinator: AppCoordinator
    
    var body: some View {
        NavigationView {
            TrendingShowsView(coordinator: TrendingShowsCoordinator())
        }
    }
}
