//
//  ViewController.swift
//  enemyLosses
//
//  Created by lera on 23.07.2022.
//

import UIKit
import Networking

class ViewController: UIViewController {

    @IBOutlet private weak var mobileSRBMSystem: UILabel!
    @IBOutlet private weak var specialEquipment: UILabel!
    @IBOutlet private weak var date: UILabel!
    @IBOutlet private weak var antiAircraftWarfare: UILabel!
    @IBOutlet private weak var navalShip: UILabel!
    @IBOutlet private weak var drone: UILabel!
    @IBOutlet private weak var militaryAuto: UILabel!
    @IBOutlet private weak var fuelTank: UILabel!
    @IBOutlet private weak var MRL: UILabel!
    @IBOutlet private weak var fieldArtillery: UILabel!
    @IBOutlet private weak var APC: UILabel!
    @IBOutlet private weak var tank: UILabel!
    @IBOutlet private weak var helicopter: UILabel!
    @IBOutlet private weak var aircraft: UILabel!
    var Equipment: Equipment? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    func configView(){
        guard var Equipment = self.Equipment else {return}
        self.date.text = Equipment.date
        if (Equipment.antiAircraftWarfare == nil ){
            Equipment.antiAircraftWarfare = 0
        }
        self.antiAircraftWarfare.text = String(Equipment.antiAircraftWarfare!)
        if (Equipment.navalShip == nil ){
            Equipment.navalShip = 0
        }
        self.navalShip.text = String(Equipment.navalShip!)
        if (Equipment.mobileSRBMSystem == nil ){
            Equipment.mobileSRBMSystem = 0
        }
        if (Equipment.specialEquipment == nil ){
            Equipment.specialEquipment = 0
        }
        self.specialEquipment.text = String(Equipment.specialEquipment!)
        if (Equipment.militaryAuto == nil ){
            Equipment.militaryAuto = 0
        }
        self.militaryAuto.text = String(Equipment.militaryAuto!)
        if (Equipment.mobileSRBMSystem == nil ){
            Equipment.mobileSRBMSystem = 0
        }
        self.mobileSRBMSystem.text = String(Equipment.mobileSRBMSystem!)
        if (Equipment.drone == nil ){
            Equipment.drone = 0
        }
        self.drone.text = String(Equipment.drone!)
        if (Equipment.fuelTank == nil ){
            Equipment.fuelTank = 0
        }
        self.fuelTank.text = String(Equipment.fuelTank!)
        if (Equipment.MRL == nil ){
            Equipment.MRL = 0
        }
        self.MRL.text = String(Equipment.MRL!)
        if (Equipment.fieldArtillery == nil ){
            Equipment.fieldArtillery = 0
        }
        self.fieldArtillery.text = String(Equipment.fieldArtillery!)
        if (Equipment.APC == nil ){
            Equipment.APC = 0
        }
        self.APC.text = String(Equipment.APC!)
        if (Equipment.tank == nil ){
            Equipment.tank = 0
        }
        self.tank.text = String(Equipment.tank!)
        if (Equipment.helicopter == nil ){
            Equipment.helicopter = 0
        }
        self.helicopter.text = String(Equipment.helicopter!)
        if (Equipment.aircraft == nil ){
            Equipment.aircraft = 0
        }
        self.aircraft.text = String(Equipment.aircraft!)
        

    }


}

