//
//  MapView.swift
//  Africa
//
//  Created by Syed ShahRukh Haider on 02/01/2021.
//

import SwiftUI
import MapKit

struct InsetMap: View {
    
//    var heightValue : CGFloat
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.7783, longitude: 119.4179), span: MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5))
    
    var body: some View {
    
       
        Map(coordinateRegion: $region)
//            .frame(height:250)
//            .cornerRadius(12)
    }
}

struct InsetMap_Previews: PreviewProvider {
    static var previews: some View {
        InsetMap()
            .previewLayout(.sizeThatFits)
            
        
            
    }
}
