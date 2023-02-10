//
//  ModelData.swift
//  Landmark
//
//  Created by Aveek on 10/02/2023.
//

import Foundation

var landmarks : [Landmark] = load("landmarkData.json")

func load<T : Decodable>(_ fileName : String) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Could not find \(fileName) in main bundle")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error) ")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(fileName) as \(T.self): \n\(error)")
    }
}
