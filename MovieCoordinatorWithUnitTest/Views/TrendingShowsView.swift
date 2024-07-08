import SwiftUI

struct TrendingShowsView: View {
    @StateObject private var presenter = TrendingShowsPresenter()
    @ObservedObject var coordinator: TrendingShowsCoordinator
    
    var body: some View {
        VStack {
            List(presenter.shows, id: \.self) { show in
                Text(show)
            }
        }
        .onAppear {
            presenter.fetchTrendingShows()
        }
    }
}
