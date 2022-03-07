//: [Previous](@previous)

import Foundation
import UIKit

// Stage 1 of evolution of the APIClient (singleton) is to split the concerns of the individual calls (login , loadFeed, loadFollowers) all under
// APIClient singleton clsss move them to separate Services and ApiClient to only run Execute

struct LoggedInUser {}

final class ApiClient {
    static let shared = ApiClient()
    
    private init() {}
    
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}

extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

struct FeedItem {}

extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}
