//
//  ViewController.swift
//  Pitch_perfect
//
//  Created by Samith Wijesinghe on 2021-05-08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func recordAudio(_ sender: Any) {
        print("working my nigga!!")
        recordLabel.text = "recording in progress"
    }
    @IBOutlet weak var recordLabel: UILabel!
    @IBAction func stopRecording(_ sender: Any) {
       print("hmmm see if this works")
    }
    

}

