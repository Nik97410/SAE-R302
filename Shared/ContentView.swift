//
//  ContentView.swift
//  Shared
//
//  Created by Marco on 24/08/2022.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var id: String=""
    @State var mdp: String=""
    var body: some View {
        VStack{
            Text("SAE 3.02  ")
                .frame(width: 160)
                .border(Color.gray)
                .font(.title)
                .foregroundColor(.white)
                .background(Image("My project-1-4"))
            Text("Marco")
                .foregroundColor(.white)
            Form {
                TextField("Identifiant", text: $id)
                SecureField("Mots de passe", text: $mdp)
            }
            
        Button(action: {
            print("Connect")
        }) {
            Text("Se connecter")
                .font(.body)
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .background(Color(UIColor.systemBlue))
                .cornerRadius(15)
                .foregroundColor(.white)
            
            }
        }
    }
}

public extension UIApplication {

    func clearLaunchScreenCache() {
        do {
            try FileManager.default.removeItem(atPath: NSHomeDirectory()+"/Library/SplashBoard")
        } catch {
            print("Failed to delete launch screen cache: (error)")
        }
    }

}
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    try! FileManager.default.removeItem(atPath: NSHomeDirectory()+"/Library/SplashBoard")

    do {
        sleep(2)
    }

    return true
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(0.0)
            .previewDevice("iPhone 12")
            .previewLayout(.device)
            .previewInterfaceOrientation(.portrait)
            .previewInterfaceOrientation(.landscapeRight)
            .previewInterfaceOrientation(.landscapeLeft)
            
        
    }
}

// juste pour commits
//ssss

