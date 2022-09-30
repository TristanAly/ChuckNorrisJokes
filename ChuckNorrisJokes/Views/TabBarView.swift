//
//  TabBarView.swift
//  ChuckNorrisJokes
//
//  Created by apprenant1 on 27/09/2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            JokeView()
                .tabItem {
                    Image(systemName: "hare.fill")
                }
            GithubView()
                .tabItem {
                    Image(systemName: "star.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
