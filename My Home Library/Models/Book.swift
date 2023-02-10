//
//  Book.swift
//  My Home Library
//
//  Created by Ted Nesham on 2/1/23.
//

import SwiftUI

struct Book {
    
    let id = UUID()
    let title: String
    let author: String
    let genre: String
    let thumbnail: URL
}

struct BookList {
    static let tenBooks = [
        Book(title: "Future Shock", author: "Alvin Toffler", genre: "Fiction", thumbnail: URL(string: "https://books.google.com/books/content?id=TayGZxfYF_EC&printsec=frontcover&img=1&zoom=1&source=gbs_api")!),
        
        Book(title: "Lord of the Flies", author: "William Golding", genre: "Fiction", thumbnail: URL(string: "https://books.google.com/books/content?id=H3KNEAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api")!),
        
        Book(title: "Watership Down", author: "Richard Adams", genre: "Classic", thumbnail: URL(string: "https://books.google.com/books/content?id=X_OSuwsF4_UC&printsec=frontcover&img=1&zoom=5&source=gbs_api")!),
        
        Book(title: "Moby-Dick", author: "Herman Melville", genre: "Classic", thumbnail: URL(string: "https://books.google.com/books/content?id=_Vl8QquteAMC&printsec=frontcover&img=1&zoom=5&source=gbs_api")!),
        
        Book(title: "Someone Dies, Someone Lives", author: "Lurlene McDaniel", genre: "Teen", thumbnail: URL(string: "https://books.google.com/books/content?id=f1psopdba_AC&printsec=frontcover&img=1&zoom=5&source=gbs_api")!)
    ]
}
