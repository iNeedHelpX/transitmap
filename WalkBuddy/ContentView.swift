//
//  ContentView.swift
//  WalkBuddy
//
//  Created by julia pak on 2020-03-14.
//  Copyright © 2020 julia pak. All rights reserved.
//

import SwiftUI
import Mapbox

struct ContentView: View {
    
   // private var locationManager = LocationManager()
    //ck7poupcp08mu1io1wnqrmekr
    let url = URL(string: "mapbox://styles/ineedhelpx/ck7poupcp08mu1io1wnqrmekr")!
    
    @State var annotations: [MGLPointAnnotation] = [
        
        MGLPointAnnotation(title: "Seven's Park", coordinate:.init(latitude:  43.652362, longitude: -79.392903))
        
    ]
    
    var body: some View {
        //        MapView(annotations: $annotations).centerCoordinate(.init(latitude: 43.653281, longitude: -79.394305)).zoomLevel(14.70)
        //        .styleURL(url)
        
        MapView(annotations: $annotations).centerCoordinate(.init(latitude: 43.653281, longitude: -79.394305)).zoomLevel(14.80)
            .styleURL(url)
            .padding()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
