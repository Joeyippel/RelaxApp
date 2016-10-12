//
//  ViewController.swift
//  RelaxApp
//
//  Created by Joey Ippel on 04/10/2016.
//  Copyright © 2016 Joey Ippel. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let distanceSpan:CLLocationDegrees = 2000
        
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 51.813298, longitude: 4.690093)
        
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(51.813298, 4.690093), distanceSpan, distanceSpan), animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Relax plek 1"
        annotation.subtitle = "Leuke plek om te relaxen"
        mapView.addAnnotation(annotation)
        
        let longPress = UILongPressGestureRecognizer(target: self, action: Selector(("action:")))
        longPress.minimumPressDuration = 1.0
        mapView.addGestureRecognizer(longPress)
        
        
    }
    func action(gestureRecognizer:UIGestureRecognizer) {
        let touchPoint = gestureRecognizer.location(in: self.mapView)
        let newCoord:CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: self.mapView)
        
        let newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = newCoord
        newAnnotation.title = "New Location"
        newAnnotation.subtitle = "New Subtitle"
        mapView.addAnnotation(newAnnotation)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

