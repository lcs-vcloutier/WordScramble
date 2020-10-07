//
//  ContentView.swift
//  WordScramble
//
//  Created by Cloutier, Vincent on 2020-10-07.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your word", text: $newWord)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                List(usedWords, id: \.self) {
                    Text($0)
                }
            }
            .navigationBarTitle(rootWord)
        }
    }
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        // exit if the remaining string is empty
        guard answer.count > 0 else {
            return
        }

        // extra validation to come

        usedWords.insert(answer, at: 0)
        newWord = ""
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
