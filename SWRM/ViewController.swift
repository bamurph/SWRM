//
//  ViewController.swift
//  SWRM
//
//  Created by Ben Murphy on 12/23/17.
//  Copyright © 2017 Constellation Software. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    // Declare Vars
    var oscillator = AKOscillator(waveform: AKTable(.sawtooth))

    @IBOutlet weak var waveformSelector: UISegmentedControl!

    // Functions
    @IBAction func startPlaying(_ sender: UIButton) {
        oscillator.frequency = random(in: 220 ... 880)
        oscillator.start()
    }

    @IBAction func stopPlaying(_ sender: UIButton) {
        oscillator.stop()
    }

    @IBAction func didSelectWaveform(_ sender: UISegmentedControl) {
        switch sender.titleForSegment(at: sender.selectedSegmentIndex) {

        case .none:
            return
        case .some("Sine"):
            oscillator = AKOscillator(waveform: AKTable(.sine))
        case .some(let a):
            switch a  {
        }

    }



    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up Audiokit
        AudioKit.output = oscillator
        AudioKit.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

