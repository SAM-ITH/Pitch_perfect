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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("hey this thing is appears")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    @IBOutlet weak var recordLabel: UILabel!
    
    
    @IBAction func recordAudio(_ sender: Any) {
        print("working my nigga!!")
        recordLabel.text = "recording in progress"
    }
 
    @IBAction func stopRecording(_ sender: Any) {
       print("hmmm see if this works")
    }
    

}

