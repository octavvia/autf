import SwiftUI
import SwiftData


struct ContentView: View {
    @StateObject var authViewModel = AuthViewModel()

    var body: some View {
        Group {
            if authViewModel.isSignedIn {
                FContentView()
            } else {
                AuthView()
            }
        }
        .environmentObject(authViewModel)
    }
}

