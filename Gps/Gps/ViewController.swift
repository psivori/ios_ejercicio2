//
//  ViewController.swift
//  Gps
//
//  Created by Administrador on 13/5/16.
//  Copyright © 2016 MICHO. All rights reserved.
//

import UIKit
import SwiftLocation
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var aIndicator: UIActivityIndicatorView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do {
            aIndicator.startAnimating()
            try SwiftLocation.shared.currentLocation(Accuracy.Neighborhood, timeout: 20, onSuccess: { (location) -> Void in
                // location is a CLPlacemark
               self.label.text = "Latitud: " + String(location!.coordinate.latitude) + " " + "Longitud: " + String(location!.coordinate.longitude)
        
                self.map.setCenterCoordinate(location!.coordinate, animated: true)
                
//                let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
//                let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//                self.map.setRegion(region, animated: true)
                
                self.aIndicator.stopAnimating()
                
                
                
                
                
                }) { (error) -> Void in
                    // something went wrong
                     self.aIndicator.stopAnimating()
                    let alertController = UIAlertController(title: "Error", message:
                        error?.description, preferredStyle: UIAlertControllerStyle.Alert)
                    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
                    self.presentViewController(alertController, animated: true, completion: nil)
            }
           
            
            } catch {
                 aIndicator.stopAnimating()
                let alertController = UIAlertController(title: "Error", message:
                "Error getting current location", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
                self.presentViewController(alertController, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

