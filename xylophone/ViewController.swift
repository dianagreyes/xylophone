//
//  ViewController.swift
//  xylophone
//
//  Created by Giselle RS on 21/02/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSoundC()
        //print("presione la tecla C jeje")
    }
    
    func playSoundC() {
        guard let path = Bundle.main.path(forResource: "C", ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
    
}


