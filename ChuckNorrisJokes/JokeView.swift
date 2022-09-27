//
//  JokeView.swift
//  ChuckNorrisJokes
//
//  Created by apprenant1 on 27/09/2022.
//

import SwiftUI

struct JokeView: View {
    
    @State var joke: String = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text(joke)
                .font(.title2)
                .foregroundColor(.white)
                .bold()
                .padding()
                .frame(width: 300,height: 260)
                .background(.blue.opacity(0.7))
                .cornerRadius(10)
            Spacer()
            Button {
                Task.init {
                        self.joke = try await getJoke()
                }
            } label: {
                Text("Vous voulez une blague sur Chuck Norris")
                    .foregroundColor(.white)
                    .bold()
            }
            .padding()
            .background(.blue)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
