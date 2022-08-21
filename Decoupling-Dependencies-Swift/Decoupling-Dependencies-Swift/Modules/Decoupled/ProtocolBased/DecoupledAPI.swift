//
//  DecoupledAPI.swift
//  Decoupling-Dependencies-Swift
//
//  Created by Enes Buğra Yenidünya on 20.08.2022.
//

import Foundation

// MARK: - DecoupledAPIFetchable
protocol DecoupledAPIFetchable {
    func loadFeed(completion: @escaping ([FeedItem]) -> Void)
}

// MARK: - DecoupledAPI
final class DecoupledAPI: DecoupledAPIFetchable {
    
    // MARK: Functions
    func loadFeed(completion: @escaping ([FeedItem]) -> Void) {
        // Some real service implemantation goes here.
        let feedItem = FeedItem(name: "A Feed Name", imageUrl: "A Feed URL String")
        completion([feedItem])
    }
}
