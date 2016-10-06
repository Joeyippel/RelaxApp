//
//  ViewController.swift
//  RelaxApp
//
//  Created by Joey Ippel on 04/10/2016.
//  Copyright © 2016 Joey Ippel. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let distanceSpan:CLLocationDegrees = 2000
        
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(51.813298, 4.690093), distanceSpan, distanceSpan), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

