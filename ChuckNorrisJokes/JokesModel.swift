//
//  JokesModel.swift
//  ChuckNorrisJokes
//
//  Created by apprenant1 on 27/09/2022.
//

import Foundation


struct JokesModel: Codable {
    let value: String
}

func getJoke() async throws -> String {
    // adresse
    guard let url = URL(string: "https://api.chucknorris.io/jokes/random")
    else { fatalError("Couldn't not find URL")}
    // faire une requete
    //stipuler action
    // urlsession
    let urlRequest = URLRequest(url: url)
            let (data, response) = try await URLSession.shared.data(for: urlRequest)

           
            let decodedFood = try JSONDecoder().decode(JokesModel.self, from: data)
        print("Async decodedFood", decodedFood)
    //gerer l'erreur
    guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
    // décoder l' URL
    
     let decodedJoke = try JSONDecoder().decode(JokesModel.self, from: data)
 print("Async decodedFood", decodedJoke)
    let joke = decodedJoke.value
    // return le code
    return joke
}
