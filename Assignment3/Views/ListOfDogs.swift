//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ListOfDogs: View {
    
    @ObservedObject var dogsvm = DogsViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(dogsvm.DogBreeds) { dog in
                    NavigationLink {
                        DogDetail(url: dogsvm.fetchData(breed: dog.breedURL), breed: dog.dogBreed)
                    } label: {
                        Text(dog.dogBreed)
                    }
                }
            }.onAppear {
                dogsvm.fetchBreeds()
            }
            .listStyle(.grouped)
            .navigationTitle("Dog Breeds")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfDogs()
    }
}
