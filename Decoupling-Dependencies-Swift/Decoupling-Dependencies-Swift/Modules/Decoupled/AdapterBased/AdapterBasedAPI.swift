//
//  AdapterBasedAPI.swift
//  Decoupling-Dependencies-Swift
//
//  Created by Enes Buğra Yenidünya on 21.08.2022.
//

import Foundation

// MARK: - AdapterBasedAPIFetchable
protocol AdapterBasedAPIFetchable {
    func loadFeedFromCache(completion: @escaping ([FeedItem]) -> Void)
}

// MARK: - DecoupledAPI
final class AdapterBasedAPI: AdapterBasedAPIFetchable {
    
    // MARK: Functions
    func loadFeedFromCache(completion: @escaping ([FeedItem]) -> Void) {
        // Some real service implemantation goes here.
        let feedItem = FeedItem(name: "A Cached Feed Name", imageUrl: "A Cached Feed URL String")
        completion([feedItem])
    }
}
