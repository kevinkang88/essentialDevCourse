import Foundation
import UIKit

// Singleton Evolution 3 - Inverting dependency
// Instead of different extensions supporting ApiClient
//
//   [login extention] -> Api Client <- [load followers]
//
// Instead of a modules (login, followers, etc) depending on a concrete ApiClient
// make the client depend on the modules
//
// keep logic inside modules and details inside the ApiClient
// when we call the service, the consumer doesn't have to know about the ApiClient at all
//
//   [login extention] <- Api Client -> [load followers]

