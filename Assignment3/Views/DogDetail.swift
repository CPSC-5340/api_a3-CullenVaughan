//
//  DogDetail.swift
//  Assignment3
//
//  Created by Cullen Vaughan on 6/9/23.
//

import SwiftUI

struct DogDetail: View {
    
    @ObservedObject var dogsvm = DogsViewModel()
    @State var url : String
    var breed : String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: url)) { image in
                image.resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }.frame(width: 400, height: 400)
        }.navigationTitle(breed)
    }
}
