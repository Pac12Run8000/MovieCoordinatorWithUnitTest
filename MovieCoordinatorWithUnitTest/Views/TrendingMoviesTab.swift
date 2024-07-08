import SwiftUI

struct TrendingMoviesTab: View {
    @EnvironmentObject var appCoordinator: AppCoordinator
    
    var body: some View {
        NavigationView {
            TrendingMoviesView(coordinator: TrendingMoviesCoordinator())
        }
    }
}
