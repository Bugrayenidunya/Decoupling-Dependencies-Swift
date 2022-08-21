//
//  DecoupledViewControllerAPIAdapter.swift
//  Decoupling-Dependencies-Swift
//
//  Created by Enes Buğra Yenidünya on 21.08.2022.
//

import Foundation

protocol DecoupledViewControllerAPI {
    func loadFeed(completion: @escaping ([FeedItem]) -> Void)
}

final class DecoupledViewControllerAPIAdapter {
    
    // MARK: Properties
    private let api: AdapterBasedAPIFetchable
    
    // MARK: Init
    init(api: AdapterBasedAPIFetchable) {
        self.api = api
    }
}

// MARK: - DecoupledViewControllerAPI
extension DecoupledViewControllerAPIAdapter: DecoupledViewControllerAPI {
    func loadFeed(completion: @escaping ([FeedItem]) -> Void) {
        api.loadFeedFromCache { cachedFeedItems in
            // Do some convertion and logic
            // and return in `completion`
            completion(cachedFeedItems)
        }
    }
}
