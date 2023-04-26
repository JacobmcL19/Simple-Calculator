//
//  ContentView.swift
//  Flashlight
//
//  Created by Jacob McLean on 4/16/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var isOn = false
    var torch: AVCaptureDevice?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        torch = AVCaptureDevice.default(for: AVMediaType.video)
        
        do {
            try torch?.lockForConfiguration()
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isOn {
            torch?.torchMode = AVCaptureDevice.TorchMode.off
            isOn = false
        } else {
            torch?.torchMode = AVCaptureDevice.TorchMode.on
            isOn = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
