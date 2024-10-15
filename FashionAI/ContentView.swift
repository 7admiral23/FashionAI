//
//  ContentView.swift
//  FashionAI
//
//  Created by Ulugbek Abdimurodov on 15/10/24.
//

import SwiftUI

struct ContentView: View {
    let gridItems = [
        GridItem(height: 250, imgString: "img_0"),
        GridItem(height: 150, imgString: "img_1"),
        GridItem(height: 450, imgString: "img_2"),
        GridItem(height: 450, imgString: "img_3"),
        
        GridItem(height: 450, imgString: "img_4"),
        GridItem(height: 450, imgString: "img_5"),
        GridItem(height: 450, imgString: "img_6"),
        GridItem(height: 450, imgString: "img_7"),
        
        GridItem(height: 450, imgString: "img_8"),
        GridItem(height: 450, imgString: "img_9"),
        GridItem(height: 450, imgString: "img_10"),
        GridItem(height: 450, imgString: "img_11"),
        
        GridItem(height: 450, imgString: "img_12"),
        GridItem(height: 450, imgString: "img_13"),
        GridItem(height: 450, imgString: "img_14"),
        GridItem(height: 450, imgString: "img_15"),
        
        GridItem(height: 450, imgString: "img_16"),
        GridItem(height: 450, imgString: "img_17"),
        GridItem(height: 450, imgString: "img_18"),
        GridItem(height: 450, imgString: "img_19"),
    ]
    
    @State private var columns = 3
    
    var body: some View {
        NavigationView{
            ScrollView{
                WardrobeGrid(gridItems: gridItems, numberOfColumns: columns, spacing: 20, horizontalPadding: 20)
            }
            .navigationBarItems(leading: removeBtn, trailing: addBtn)
            .navigationBarTitle("Fashion AI")
        }
    }
    
    var removeBtn: some View {
        Button(action: {
            
        })
        {
            Image(systemName: "equal")
        }
    }
    
    var addBtn: some View {
        Button(action: {
            Image(systemName: "person")
        })
        {
        }
    }
}

struct ContentView_Prewies: PreviewProvider {
    static var previews: some View { ContentView()
    }
}
