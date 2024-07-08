import SwiftUI

struct MovieSearchTab: View {
    @EnvironmentObject var appCoordinator: AppCoordinator
    
    var body: some View {
        NavigationView {
            MovieSearchView(coordinator: MovieSearchCoordinator())
        }
    }
}
