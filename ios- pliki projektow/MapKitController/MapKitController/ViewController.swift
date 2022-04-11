//
//  ViewController.swift
//  MapKitController
//
//  Created by Student G225 07 on 11/04/2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let distance: CLLocationDistance = 800
        let pitch: CGFloat = 400
        let heading = 45.0
        var camera: MKMapCamera?
        
        mapView.mapType = .satelliteFlyover
        let coordinate = CLLocationCoordinate2DMake(51.110589, 17.031813)
        camera = MKMapCamera(lookingAtCenter: coordinate, fromDistance: distance, pitch: pitch, heading: heading)
        mapView.camera = camera!
        
        
        
    }


}

