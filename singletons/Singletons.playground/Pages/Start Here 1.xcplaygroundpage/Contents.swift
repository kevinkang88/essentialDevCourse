//: A UIKit based Playground for presenting user interface
  
import UIKit

struct LoggedInUser {}

// singletons should be extendable and final is okay here b/c although final does not allow subclassing, it still allows extending through extend
final class ApiClient {
    // static let is constant and lazy loaded which makes it sa we don't have to access "private static let"
    static let shared = ApiClient()
    
    // purpose of privatizing the init is so that ApiClient() cannot be created as such
    private init() {}
    
    func login(completion: (LoggedInUser) -> Void) {}
    
    // below is starting to get bad b/c we are going to accessing ApiClient in different views for different purposes 
    // func loadFeed(completion: ([Post] -> Void) {}
    // func loadFollowers(completion: ([User] -> Void) {}
}

let client = ApiClient.shared

// URLSession seems like a true "S"ingleton but it allows standard initialization while also providing shared initialization for singleton so
// this is a "s"ingleton b/c shared just acts as convinience
let session = URLSession()
let anotherSession = URLSession.shared

// making singleton testsable

class LoginViewController: UIViewController {
    
    // this is hard to test
//    func didTapLoginButton() {
//
//        ApiClient.shared.login { user in
//            // show next screen
//        }
//    }
    
    // in test below property can be overrode or assigned to mock API
    var api = ApiClient.shared
    func didTapLoginButton() {
        
        api.login { user in
            // show next screen
        }
    }
}
