//
//  FeedAcceptanceTests.swift
//  EssentialAppTests
//
//  Created by Fattah, Iram on 12/5/23.
//

import XCTest
import EssentialFeediOS
@testable import EssentialApp

class FeedAcceptanceTests: XCTestCase {
    func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() {
        let sut = SceneDelegate()
        sut.window = UIWindow()
        sut.configureWindow()

        let nav = sut.window?.rootViewController as? UINavigationController
        let feed = nav?.topViewController as! FeedViewController

        XCTAssertEqual(feed.numberOfRenderedFeedImageViews(), 2)
    }
    
    func test_onLaunch_displaysCachedRemoteFeedWhenCustomerHasNoConnectivity() {

    }

    func test_onLaunch_displaysEmptyFeedWhenCustomerHasNoConnectivityAndNoCache() {
        
    }
}
