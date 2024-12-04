//
//  ViewController.swift
//  MapaComSwift
//
//  Created by Caio Fabrini on 03/12/24.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    private var screen: Screen?
    private let locationManager = CLLocationManager()
    private var isFirstUpdate = true

    override func loadView() {
        screen = Screen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLocationManager()
        setupActions()
    }

    // MARK: - Setup Location Manager
    private func setupLocationManager() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()

        screen?.mapView.showsUserLocation = true
    }

    // MARK: - Actions
    private func setupActions() {
        screen?.centerButton.addTarget(self, action: #selector(centerMapOnUserLocation), for: .touchUpInside)
    }

    @objc private func centerMapOnUserLocation() {
        guard let location = locationManager.location else { return }
        centerMap(on: location.coordinate)
    }

    private func centerMap(on coordinate: CLLocationCoordinate2D) {
        let region = MKCoordinateRegion(
            center: coordinate,
            latitudinalMeters: 1000,
            longitudinalMeters: 1000
        )
        screen?.mapView.setRegion(region, animated: true)
    }
}

// MARK: - CLLocationManagerDelegate
extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }

        if isFirstUpdate {
            centerMap(on: location.coordinate)
          isFirstUpdate.toggle()
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Failed to get user location: \(error.localizedDescription)")
    }
}
