import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appCoordinator: AppCoordinator
    
    var body: some View {
        TabView {
            TrendingMoviesTab()
                .tabItem {
                    Image(systemName: "film")
                    Text("Trending Movies")
                }
            
            TrendingShowsTab()
                .tabItem {
                    Image(systemName: "tv")
                    Text("Trending Shows")
                }
            
            MovieSearchTab()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Movie Search")
                }
            
            TVSearchTab()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("TV Search")
                }
        }
    }
}

#Preview {
    ContentView()
}
