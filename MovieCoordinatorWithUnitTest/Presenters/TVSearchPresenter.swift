import SwiftUI

class TVSearchPresenter: ObservableObject {
    @Published var searchResults: [String] = []
    
    func searchTVShows(query: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.searchResults = ["Result 1", "Result 2", "Result 3"]
        }
    }
}
