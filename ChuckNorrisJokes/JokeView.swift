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
            Button {
                Task.init {
                        self.joke = try await getJoke()
                }
            } label: {
                Text("Cliquez ici")
                    .foregroundColor(.white)
                    .bold()
            }
            .buttonStyle(.borderedProminent)
            .padding()
Spacer()
            Text(joke)
                .font(.title2)
                .padding()
                .frame(width: 300,height: 260)
        }
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
