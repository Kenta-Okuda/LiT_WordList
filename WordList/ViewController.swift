//
//  ViewController.swift
//  WordList
//
//  Created by Kenta Okuda on 6/8/16.
//  Copyright © 2016 Kenta Okuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func back(segue: UIStoryboardSegue){
        
    }
    
    @IBAction func startButtonTapped() {
        let saveData = NSUserDefaults.standardUserDefaults()
        
        if let wordArray = saveData.arrayForKey("WORD") {
            if wordArray.count  > 0 {
                self.performSegueWithIdentifier("toQuestionView", sender: nil)
                return
            }
        }
        
        let alert: UIAlertController = UIAlertController(title: "単語", message: "まずは「単語一覧」をタップして単語登録をしてください", preferredStyle: .Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

