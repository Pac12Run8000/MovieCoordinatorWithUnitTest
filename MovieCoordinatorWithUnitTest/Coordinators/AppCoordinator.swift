import SwiftUI

class AppCoordinator: ObservableObject, AppCoordinatorProtocol {
    @Published var currentView: AnyView = AnyView(ContentView())
    
    // Properties to store current coordinators for testing
    var trendingMoviesCoordinator: TrendingMoviesCoordinator?
    var trendingShowsCoordinator: TrendingShowsCoordinator?
    var movieSearchCoordinator: MovieSearchCoordinator?
    var tvSearchCoordinator: TVSearchCoordinator?
    
    func showTrendingMovies() {
        let coordinator = TrendingMoviesCoordinator()
        trendingMoviesCoordinator = coordinator
        currentView = AnyView(TrendingMoviesView(coordinator: coordinator))
    }
    
    func showTrendingShows() {
        let coordinator = TrendingShowsCoordinator()
        trendingShowsCoordinator = coordinator
        currentView = AnyView(TrendingShowsView(coordinator: coordinator))
    }
    
    func showMovieSearch() {
        let coordinator = MovieSearchCoordinator()
        movieSearchCoordinator = coordinator
        currentView = AnyView(MovieSearchView(coordinator: coordinator))
    }
    
    func showTVSearch() {
        let coordinator = TVSearchCoordinator()
        tvSearchCoordinator = coordinator
        currentView = AnyView(TVSearchView(coordinator: coordinator))
    }
}


class TrendingMoviesCoordinator: ObservableObject {}
class TrendingShowsCoordinator: ObservableObject {}
class MovieSearchCoordinator: ObservableObject {}
class TVSearchCoordinator: ObservableObject {}
