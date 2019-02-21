import Routing
import Vapor
import Foundation
import Leaf

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    router.get { req -> Future<View> in
        let context = [String: String]()
        return try req.view().render("home", context)
    }
    
    router.get("contact") {req -> Future<View> in
        let context = [String: String]()
        return try req.view().render("contact", context)
    }
}
