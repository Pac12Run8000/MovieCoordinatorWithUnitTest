import SwiftUI

class AppCoordinator: ObservableObject, AppCoordinatorProtocol {
    @Published var currentView: AnyView = AnyView(ContentView())
    
    func showTrendingMovies() {
        let coordinator = TrendingMoviesCoordinator()
        currentView = AnyView(TrendingMoviesView(coordinator: coordinator))
    }
    
    func showTrendingShows() {
        let coordinator = TrendingShowsCoordinator()
        currentView = AnyView(TrendingShowsView(coordinator: coordinator))
    }
    
    func showMovieSearch() {
        let coordinator = MovieSearchCoordinator()
        currentView = AnyView(MovieSearchView(coordinator: coordinator))
    }
    
    func showTVSearch() {
        let coordinator = TVSearchCoordinator()
        currentView = AnyView(TVSearchView(coordinator: coordinator))
    }
}

class TrendingMoviesCoordinator: ObservableObject {}
class TrendingShowsCoordinator: ObservableObject {}
class MovieSearchCoordinator: ObservableObject {}
class TVSearchCoordinator: ObservableObject {}
