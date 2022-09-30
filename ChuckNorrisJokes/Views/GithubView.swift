//
//  GithubView.swift
//  ChuckNorrisJokes
//
//  Created by apprenant1 on 27/09/2022.
//

import SwiftUI

struct GithubView: View {
    
    @State var user: GithubModel = GithubModel(id: 0, login: "", name: "", avatarUrl: "", bio: "", publicRepos: 0)
    @State var pseudo: String = ""
    var body: some View {
        //        NavigationView {
        VStack{
            TextField("Pseudo", text: $pseudo)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("envoyé") {
                Task {
                    user = try await getUsers(pseudo: pseudo)
                }
            }
            .buttonStyle(.borderedProminent)
            VStack{
                if !user.login.isEmpty {
                    VStack{
                        Text(user.login)
                            .font(.title)
                        Text(user.name)
                            .font(.title2)
                    }
                    .padding()
                        AsyncImage(url: URL(string: user.avatarUrl))
                            .frame(width: 350, height: 300)
                            .cornerRadius(10)
                    VStack(alignment: .leading){
                        Text(user.bio)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Text("\(user.name) a \(user.publicRepos) repositories sur son compte")
                            .font(.title2)
                            .padding()
                    }
                }
            }
        }
    }
}

struct GithubView_Previews: PreviewProvider {
    static var previews: some View {
        GithubView()
    }
}

