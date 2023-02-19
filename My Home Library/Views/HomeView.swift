//
//  homeView.swift
//  My Home Library
//
//  Created by Ted Nesham on 1/30/23.
//

import Foundation
import SwiftUI
import Charts



/* The homeview
  - Has books that are 'stale,' these are books that are reccomended for selling/trading
    - These will be sliding views where you can scroll to see the first couple then press more for a full list.
  - There will also be a section that lists all the books that you are looking for (everyone can see this in your profile)
  - Statistics: Graphs of how many books you have sold and the profit/losses you have taken from all the books over time.
                You can also see your seller/trader rating along with all the reviews people have left (everyone can also see this)
 
 
 */

struct HomeView: View {
    var body: some View {
        NavigationView(content: {
            VStack {
                HStack {
                    Text("reccommended for listing")
                        .padding(
                            EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0)
                        )
                        .font(.title3)
                    Spacer()
                    
                    Button(action: getRecommendedListings) {
                        Text("See all")
                    }
                    .padding( EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0))
                        Spacer()
                    
                }
                
                
                ScrollView(.horizontal, showsIndicators: false ) {
                        HStack(spacing: 5) {
                            ForEach(0..<5) {
                                Text("Item \($0)")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 100, height: 100)
                                    .frame(maxWidth: .infinity)
                                    .cornerRadius(10)
                                    .background(.red)
                            }
                        }
                        .shadow(radius: 10)
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        .background(Color.cyan)
                        .border(.black)
                }
                
                // Trading section
                HStack {
                    Text("reccommended for trading")
                        .padding(
                            EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0)
                        )
                        .font(.title3)
                    Spacer()
                    
                    Button(action: getRecommendedBooks) {
                        Text("See all")
                    }
                    .padding( EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0))
                        Spacer()
                    
                }
                ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 5) {
                            ForEach(0..<5) {
                                Text("Item \($0)")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 100, height: 100)
                                    .frame(maxWidth: .infinity)
                                    .cornerRadius(10)
                                    .background(.red)
                            }
                        }
                        .shadow(radius: 10)
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        .background(Color.cyan)
                        .border(.black)
                }
                
                // Statistics section
                VStack {
                    
                    HStack {
                        Text("Statistics")
                            .padding(
                                EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0)
                            )
                            .font(.title3)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Books sold:  0")
                            .padding()
                        Spacer()
                    
                    }
                    
                    
                    HStack {
                        Text("Traded count:  0")
                            .padding()
                        Spacer()
                    }
                    
                }
                
                
                Spacer()
                
                
            }.navigationTitle("Home")
        })
    }
}

func getRecommendedListings() -> Void {
    print("Load trade list")
}

func getRecommendedBooks() -> Void {
    print("Load sell list")
}


struct HomeViewPreview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
