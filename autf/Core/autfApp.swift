import SwiftUI
import SwiftData
import Firebase


@main
struct YourAppName: App {
    
    init() {
            FirebaseApp.configure()
            
            #if DEBUG
            let providerFactory = AppCheckDebugProviderFactory()
            AppCheck.setAppCheckProviderFactory(providerFactory)
            #endif
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

