import SwiftUI


struct FirstView: View {
    var body: some View {
        VStack {
            Text("First Screen")
                .font(.largeTitle)
            
            NavigationLink(destination: SecondView()) {
                Text("Go to Second Screen")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("First Screen")
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Second Screen")
                .font(.largeTitle)
            
            NavigationLink(destination: ThirdView()) {
                Text("Go to Third Screen")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Second Screen")
    }
}

struct ThirdView: View {
    var body: some View {
        VStack {
            Text("Third Screen")
                .font(.largeTitle)
            
            Text("Welcome to the Third Screen!")
                .padding()
        }
        .navigationTitle("Third Screen")
    }
}

@main
struct ThreeScreenApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
