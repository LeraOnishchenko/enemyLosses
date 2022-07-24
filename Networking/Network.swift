//
//  Network.swift
//  enemyLosses
//
//  Created by lera on 24.07.2022.
//

import Foundation

public struct Equipment: Decodable{
    public let date: String
    public var aircraft: Int?
    public var helicopter: Int?
    public var tank: Int?
    public var APC: Int?
    public var fieldArtillery: Int?
    public var MRL: Int?
    public var militaryAuto: Int?
    public var fuelTank: Int?
    public var drone: Int?
    public var navalShip: Int?
    public var antiAircraftWarfare: Int?
    public var specialEquipment: Int?
    public var mobileSRBMSystem: Int?
    enum CodingKeys: String, CodingKey {
        case date
        case aircraft
        case helicopter
        case tank
        case APC
        case fieldArtillery = "field artillery"
        case MRL
        case militaryAuto = "military auto"
        case fuelTank = "fuel tank"
        case drone
        case navalShip = "naval ship"
        case antiAircraftWarfare = "anti-aircraft warfare"
        case specialEquipment = "special equipment"
        case mobileSRBMSystem = "mobile SRBM system"
    }

}

public class Networking{
   public var Equipments: [Equipment] = []
   public func gaveData() -> [Equipment] {
       let dataNew = try! Data(contentsOf: URL(string:
                                                "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json")!)
       let Equipments = try! JSONDecoder().decode([Equipment].self, from:dataNew)
//       let firstfive = [Equipment](Equipments[0..<5])
//    print(firstfive)
       return Equipments
    }
    public init() {}
}

