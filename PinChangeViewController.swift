//
//  PinChangeViewController.swift
//  MachineTestQ2
//
//  Created by Student P_08 on 02/08/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class PinChangeViewController: UIViewController
{

    @IBOutlet weak var PinC: UITextField!
    
    @IBOutlet weak var MobileC: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    
    @IBAction func SubmitC(_ sender: UIButton)
    {
        let update = "update ATMTable set Pin= '\(PinC.text!)' where Mobile = '\(MobileC.text!)'"
       let isSuccess = DBWrapper.sharedObj.executeQuery(query: update)
        if isSuccess
        {
            showSimpleAlert()
        }
        else
        {
            showSimpleAlert1()
        }
    }
    
    func showSimpleAlert()
    {
        let alert = UIAlertController(title: "Change Pin", message: "Pin Number Change Successfully", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok",
                                      style: UIAlertActionStyle.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    func showSimpleAlert1()
    {
        let alert = UIAlertController(title: "Invalid info", message: "plzzz enter valid inforamtion",         preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok",
                                      style: UIAlertActionStyle.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func CancleC(_ sender: UIButton)
    {
        
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

}
