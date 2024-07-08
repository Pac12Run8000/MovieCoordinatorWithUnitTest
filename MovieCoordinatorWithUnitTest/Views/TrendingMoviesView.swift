import SwiftUI

struct TrendingMoviesView: View {
    @StateObject private var presenter = TrendingMoviesPresenter()
    @ObservedObject var coordinator: TrendingMoviesCoordinator
    
    var body: some View {
        VStack {
            List(presenter.movies, id: \.self) { movie in
                Text(movie)
            }
        }
        .onAppear {
            presenter.fetchTrendingMovies()
        }
    }
}
