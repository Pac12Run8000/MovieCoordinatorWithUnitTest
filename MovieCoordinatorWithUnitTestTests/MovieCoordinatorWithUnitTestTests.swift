import XCTest
import SwiftUI
@testable import MovieCoordinatorWithUnitTest

final class AppCoordinatorTests: XCTestCase {
    var appCoordinator: AppCoordinator!

    override func setUp() {
        super.setUp()
        appCoordinator = AppCoordinator()
    }

    override func tearDown() {
        appCoordinator = nil
        super.tearDown()
    }

    func testShowTrendingMovies() {
        appCoordinator.showTrendingMovies()
        XCTAssertNotNil(appCoordinator.trendingMoviesCoordinator)
        XCTAssertTrue(appCoordinator.currentView is AnyView)
    }

    func testShowTrendingShows() {
        appCoordinator.showTrendingShows()
        XCTAssertNotNil(appCoordinator.trendingShowsCoordinator)
        XCTAssertTrue(appCoordinator.currentView is AnyView)
    }

    func testShowMovieSearch() {
        appCoordinator.showMovieSearch()
        XCTAssertNotNil(appCoordinator.movieSearchCoordinator)
        XCTAssertTrue(appCoordinator.currentView is AnyView)
    }

    func testShowTVSearch() {
        appCoordinator.showTVSearch()
        XCTAssertNotNil(appCoordinator.tvSearchCoordinator)
        XCTAssertTrue(appCoordinator.currentView is AnyView)
    }
}
