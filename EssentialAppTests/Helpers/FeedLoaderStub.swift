//
//  FeedLoadeerStub.swift
//  EssentialAppTests
//
//  Created by Fattah, Iram on 11/10/23.
//

import Foundation
import EssentialFeed
class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result

    init(result: FeedLoader.Result) {
        self.result = result
    }

    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
