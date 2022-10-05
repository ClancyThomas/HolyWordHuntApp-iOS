//
//  SavedSearchRow.swift
//  ScriptureWordCounter
//
//  Created by Clancy Thomas on 10/4/22.
//

import SwiftUI

struct SavedSearchRow: View {
    var search : Search
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 176/255, green: 196/255, blue: 222/255))
                .frame(width: 350, height: 115)
            VStack {
                HStack {
                    Text(search.word)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 30)
                    Spacer()
                    Text("Appears: \(search.wordCount) times")
                        .padding(.trailing, 30)
                }
                HStack {
                    Text("Books: \(search.booksString)")
                        .padding(.leading, 30)
                    Spacer()
                    
                }
                HStack {
                    Text("Total Verses: \(search.totalVerseCount)")
                        .padding(.leading, 30)
                    Spacer()
                }
            }
        }
        
    }
}

struct SavedSearchRow_Previews: PreviewProvider {
    static var previews: some View {
        SavedSearchRow(search: Search(id: 1, word: "saved", wordCount: 100, totalVerseCount: 12000, oldTestament: true, newTestament: false, bookOfMormon: true, doctrineAndCovenants: false, pearlOfGreatPrice: true))
    }
}