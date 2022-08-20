//
//  ContentView.swift
//  MoviesAndSeries
//
//  Created by Furkan Sepetci on 20.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
        List{
            ForEach(myFavorites){ favorite in
                Section( header: Text(favorite.title).bold()) {
                    ForEach(favorite.elements){ element in
                        NavigationLink(destination: DetailsView(chosenElement: element)) {
                            Text(element.name)
                        }
                    }
                }
            }
        }.navigationTitle(Text("Favorite Book"))
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
