import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY

    private let imageURL: String = "https://images.unsplash.com/photo-1500916434205-0c77489c6cf7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"
    
    // MARK: - BODY
    
    var body: some View {
        // MARK: - 1. BASIC

        // AsyncImage(url: URL(string: imageURL))
        
        // MARK: - 2. SCALE
        
        // AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        // MARK: - 3. PLACEHOLDER
        
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 128)
                .foregroundColor(.purple)
                .opacity(0.5)
        }
        .padding(40)
        
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
