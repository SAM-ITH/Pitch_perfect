//
//  recordSoundViewController.swift
//  Pitch_perfect
//
//  Created by Samith Wijesinghe on 2021-05-08.
//

import UIKit
import AVFoundation


class recordSoundsViewController: UIViewController, AVAudioRecorderDelegate {

    var audioRecorder : AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.isEnabled = false
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
        recordButton.isEnabled = false
        stopRecordButton.isEnabled = true
        recordLabel.text = "recording in progress"
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
            let recordingName = "recordedVoice.wav"
            let pathArray = [dirPath, recordingName]
            let filePath = URL(string: pathArray.joined(separator: "/"))
           
        

            let session = AVAudioSession.sharedInstance()
            try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)

            try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
            audioRecorder.delegate = self
            audioRecorder.isMeteringEnabled = true
            audioRecorder.prepareToRecord()
            audioRecorder.record()
        
    }
 
    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled = true
        stopRecordButton.isEnabled = false
        recordLabel.text = "Tap to record"
        
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        print("finished recording")
    }

}

