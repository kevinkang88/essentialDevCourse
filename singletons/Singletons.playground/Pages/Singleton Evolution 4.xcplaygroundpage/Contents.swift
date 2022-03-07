import Foundation
import UIKit

// Singleton Evolution 4 - implementing adaptors
// Instead of different extensions supporting ApiClient
//
// [Login] -> [login client] <- [Login adapter] -> Api Client <- [followers adapter] -> [followers client] <- [Followers]
//
//

// Main module

extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

//

struct LoggedInUser {}

final class ApiClient {
    static let shared = ApiClient()
    
    private init() {}
    
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        self.login? { user in
            
        }
    }
}

struct FeedItem {}

class FeedViewController: UIViewController {
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func didTapLoginButton() {
        self.loadFeed? { items in
        
        }
    }
}
