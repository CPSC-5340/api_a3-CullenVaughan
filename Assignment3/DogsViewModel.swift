//
//  DogsViewModel.swift
//  Assignment3
//
//  Created by Cullen Vaughan on 6/10/23.
//

import Foundation
import SwiftUI

class DogsViewModel : ObservableObject {
    
    @Published private(set) var DogsData = DogResults.init(message: "")
    @Published private(set) var DogBreeds = [DogBreedModel]()
    private let url1 = "https://dog.ceo/api/breed/"
    private let url2 = "/images/random"
    
    func fetchData(breed: String) -> String {
        let url = url1 + breed + url2
        if let url = URL(string: url) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    print(error)
                } else {
                    if let data = data {
                        do {
                            let results = try JSONDecoder().decode(DogResults.self, from: data)
                            self.DogsData = results
                        } catch {
                            print(error)
                        }
                    }
                }
            }.resume()
        }
        return DogsData.message
    }
    
    func fetchBreeds() {
        self.DogBreeds = [
            DogBreedModel(dogBreed: "Affenpinscher", breedURL: "affenpinscher"),
            DogBreedModel(dogBreed: "African", breedURL: "african"),
            DogBreedModel(dogBreed: "Airedale", breedURL: "airedale"),
            DogBreedModel(dogBreed: "Akita", breedURL: "akita"),
            DogBreedModel(dogBreed: "Appenzeller", breedURL: "appenzeller"),
            DogBreedModel(dogBreed: "Basenji", breedURL: "basenji"),
            DogBreedModel(dogBreed: "Beagle", breedURL: "beagle"),
            DogBreedModel(dogBreed: "Bluetick", breedURL: "bluetick"),
            DogBreedModel(dogBreed: "Borzoi", breedURL: "borzoi"),
            DogBreedModel(dogBreed: "Bouvier", breedURL: "bouvier"),
            DogBreedModel(dogBreed: "Boxer", breedURL: "boxer"),
            DogBreedModel(dogBreed: "Brabancon", breedURL: "brabancon"),
            DogBreedModel(dogBreed: "Briard", breedURL: "briard"),
            DogBreedModel(dogBreed: "Chihuahua", breedURL: "chihuahua"),
            DogBreedModel(dogBreed: "Chow", breedURL: "chow"),
            DogBreedModel(dogBreed: "Clumber", breedURL: "clumber"),
            DogBreedModel(dogBreed: "Cockapoo", breedURL: "cockapoo"),
            DogBreedModel(dogBreed: "Coonhound", breedURL: "coonhound"),
            DogBreedModel(dogBreed: "Cotondetulear", breedURL: "cotondetulear"),
            DogBreedModel(dogBreed: "Dachshund", breedURL: "dachshund"),
            DogBreedModel(dogBreed: "Dalmatian", breedURL: "dalmatian"),
            DogBreedModel(dogBreed: "Dhole", breedURL: "dhole"),
            DogBreedModel(dogBreed: "Dingo", breedURL: "dingo"),
            DogBreedModel(dogBreed: "Doberman", breedURL: "doberman"),
            DogBreedModel(dogBreed: "Entlebucher", breedURL: "entlebucher"),
            DogBreedModel(dogBreed: "Eskimo", breedURL: "eskimo"),
            DogBreedModel(dogBreed: "German Shepherd", breedURL: "germanshepherd"),
            DogBreedModel(dogBreed: "Groenendael", breedURL: "groenendael"),
            DogBreedModel(dogBreed: "Havanese", breedURL: "havanese"),
            DogBreedModel(dogBreed: "Hound", breedURL: "hound"),
            DogBreedModel(dogBreed: "Husky", breedURL: "husky"),
            DogBreedModel(dogBreed: "Keeshond", breedURL: "keeshond"),
            DogBreedModel(dogBreed: "Kelpie", breedURL: "kelpie"),
            DogBreedModel(dogBreed: "Komondor", breedURL: "komondor"),
            DogBreedModel(dogBreed: "Kuvasz", breedURL: "kuvasz"),
            DogBreedModel(dogBreed: "Labradoodle", breedURL: "labradoodle"),
            DogBreedModel(dogBreed: "Labrador", breedURL: "labrador"),
            DogBreedModel(dogBreed: "Leonberg", breedURL: "leonberg"),
            DogBreedModel(dogBreed: "Lhasa", breedURL: "lhasa"),
            DogBreedModel(dogBreed: "Malamute", breedURL: "malamute"),
            DogBreedModel(dogBreed: "Malinois", breedURL: "malinois"),
            DogBreedModel(dogBreed: "Maltese", breedURL: "maltese"),
            DogBreedModel(dogBreed: "Mexican Hairless", breedURL: "mexicanhairless"),
            DogBreedModel(dogBreed: "Mix", breedURL: "mix"),
            DogBreedModel(dogBreed: "Newfoundland", breedURL: "newfoundland"),
            DogBreedModel(dogBreed: "Otter Hound", breedURL: "otterhound"),
            DogBreedModel(dogBreed: "Papillon", breedURL: "papillon"),
            DogBreedModel(dogBreed: "Pekinese", breedURL: "pekinese"),
            DogBreedModel(dogBreed: "Pembroke", breedURL: "pembroke"),
            DogBreedModel(dogBreed: "Pitbull", breedURL: "pitbull"),
            DogBreedModel(dogBreed: "Pomeranian", breedURL: "pomeranian"),
            DogBreedModel(dogBreed: "Pug", breedURL: "pug"),
            DogBreedModel(dogBreed: "Puggle", breedURL: "puggle"),
            DogBreedModel(dogBreed: "Pyrenees", breedURL: "pyrenees"),
            DogBreedModel(dogBreed: "Redbone", breedURL: "redbone"),
            DogBreedModel(dogBreed: "Rottweiler", breedURL: "rottweiler"),
            DogBreedModel(dogBreed: "Saluki", breedURL: "saluki"),
            DogBreedModel(dogBreed: "Samoyed", breedURL: "samoyed"),
            DogBreedModel(dogBreed: "Schipperke", breedURL: "schipperke"),
            DogBreedModel(dogBreed: "Sharpei", breedURL: "sharpei"),
            DogBreedModel(dogBreed: "Shiba", breedURL: "shiba"),
            DogBreedModel(dogBreed: "Shihtzu", breedURL: "shihtzu"),
            DogBreedModel(dogBreed: "Stbernard", breedURL: "stbernard"),
            DogBreedModel(dogBreed: "Tervuren", breedURL: "tervuren"),
            DogBreedModel(dogBreed: "Vizsla", breedURL: "vizsla"),
            DogBreedModel(dogBreed: "Weimaraner", breedURL: "weimaraner"),
            DogBreedModel(dogBreed: "Whippet", breedURL: "whippet")
        ]
    }
}
