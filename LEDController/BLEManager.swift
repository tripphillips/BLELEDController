//
//  BLEManager.swift
//  LEDController
//
//  Created by Trip Phillips on 9/20/20.
//

import Foundation
import CoreBluetooth

class BLEManager: NSObject,  CBPeripheralDelegate, CBCentralManagerDelegate {
    
    private var centralManager: CBCentralManager!
    private var peripheral: CBPeripheral!
    
    override init() {
        super.init()
        centralManager = CBCentralManager(delegate: self, queue: nil)
        centralManager.delegate = self
        
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        self.centralManager.stopScan()
        
        self.peripheral = peripheral
        self.peripheral.delegate = self
        
        self.centralManager.connect(self.peripheral, options: nil)
    }
    
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        if peripheral == self.peripheral {
            print("Connected to BLE device.")
        }
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        
        switch central.state {
        case .poweredOff: print("CENTRAL MANAGER: Powered Off")
        case .poweredOn: print("CENTRAL MANAGER: Powered On")
        case .resetting: print("CENTRAL MANAGER: Resetting")
        case .unauthorized: print("CENTRAL MANAGER: Unauthorized")
        case .unknown: print("CENTRAL MANAGER: Unknown")
        case .unsupported: print("CENTRAL MANAGER: Unsupported")
        default: print("CENTRAL MANAGER: New State Not Known")
        }
    }
    
}
