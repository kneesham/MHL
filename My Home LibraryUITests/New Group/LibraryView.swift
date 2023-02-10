//
//  LibraryView.swift
//  My Home Library
//
//  Created by Ted Nesham on 1/30/23.
//

import Foundation
import SwiftUI


struct LibraryView: View {
    
    // Todo's are in order of priority.
    // TODO: extract the library Item into its own view
    // TODO: add a button to the toolbar and have it use the camera or manually enter a book.
    
    
    var library: [Book] = BookList.tenBooks
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                List(library, id: \.id) { book in
                    
                    VStack(alignment: .leading, spacing: 5){
                        
                        HStack {
                            AsyncImage(url: book.thumbnail) { bookThumbnail in
                                bookThumbnail
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(4)
                                    .frame(height: 100)
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 50)
                            
                            Spacer(minLength: 35)
                            
                            VStack{
                                HStack {
                                    Text("Title")
                                    Spacer()
                                    Text(book.title)
                                }
                                
                                HStack {
                                    Text("Author")
                                    Spacer()
                                    Text(book.author)
                                }
                                
                                HStack {
                                    Text("Genre")
                                    Spacer()
                                    Text(book.genre)
                                        
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Library")
            
        })
    }
    
}
