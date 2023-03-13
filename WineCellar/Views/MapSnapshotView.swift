//
//  MapSnapshotView.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 3/12/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapSnapshotView: View {
    
    let location: CLLocationCoordinate2D
    var span: CLLocationDegrees = 1
    //var locations: Location
    
    @State private var snapshotImage: UIImage? = nil
    
    var body: some View {
        
        GeometryReader { geometry in
            Group {
              if let image = snapshotImage {
                Image(uiImage: image)
              } else {
                  VStack {
                      Spacer()
                      HStack {
                        Spacer()
                        ProgressView().progressViewStyle(CircularProgressViewStyle())
                        Spacer()
                      }
                      Spacer()
                  }                  
              }
            }
            .onAppear {
              generateSnapshot(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
    
    func generateSnapshot(width: CGFloat, height: CGFloat) {
      // The region the map should display.
      let region = MKCoordinateRegion(
        center: self.location,
        span: MKCoordinateSpan(
          latitudeDelta: self.span,
          longitudeDelta: self.span
        )
      )

      // Map options
      let mapOptions = MKMapSnapshotter.Options()
        mapOptions.region = region
        mapOptions.size = CGSize(width: width, height: height)
        mapOptions.showsBuildings = false
        mapOptions.mapType = MKMapType.standard
        
      // Create the snapshotter and run it
      let snapshotter = MKMapSnapshotter(options: mapOptions)
      snapshotter.start { (snapshotOrNil, errorOrNil) in
        if let error = errorOrNil {
          print(error)
          return
        }
        if let snapshot = snapshotOrNil {
          self.snapshotImage = snapshot.image
        }
      }
    }
}

struct MapSnapshotView_Previews: PreviewProvider {
    static var previews: some View {
        // Abruzzo, Italy
        let coordinates = CLLocationCoordinate2D(latitude: 42.19, longitude: 13.75)
        MapSnapshotView(location: coordinates)
    }
}
