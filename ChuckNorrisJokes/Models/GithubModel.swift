//
//  GithubModel.swift
//  ChuckNorrisJokes
//
//  Created by apprenant1 on 27/09/2022.
//

import Foundation

struct GithubModel: Codable , Hashable, Identifiable {
    let id: Int
    let login: String
    let name: String
    let avatarUrl: String
    let bio: String
    let publicRepos: Int
}

//class GithubManager: ObservableObject {
    
//    @Published var pseudo: String = ""
//    @Published var result: GithubModel = GithubModel(id: 4, login: "ddd", name: "ee", avatar_url: "rr", bio: "eed", public_repos: 5)
    
    
func getUsers(pseudo: String) async throws -> GithubModel {
        // adresse
        guard let url = URL(string: "https://api.github.com/users/\(pseudo)")
        else { fatalError("Couldn't not find URL") }
        // faire une requete
        //stipuler action
        // urlsession
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let decodedUser = try decoder.decode(GithubModel.self, from: data)
        print("Async decodedUser", decodedUser)
        //gerer l'erreur
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        // décoder l' URL
        
        return decodedUser
    }
    
//}
