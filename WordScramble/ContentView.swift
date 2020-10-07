//
//  ContentView.swift
//  WordScramble
//
//  Created by Cloutier, Vincent on 2020-10-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // we found the file in our bundle!
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string!
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
