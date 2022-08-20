//
//  DetailsView.swift
//  MoviesAndSeries
//
//  Created by Furkan Sepetci on 21.08.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenElement : Elements
    var body: some View {
        
        VStack{
            Text(chosenElement.name).bold().font(.largeTitle)
            Text(String(chosenElement.userScore)).font(.largeTitle)
            Image(chosenElement.imageName).resizable().aspectRatio(contentMode: .fit)
            Text(chosenElement.description)
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenElement: godFather)
    }
}
