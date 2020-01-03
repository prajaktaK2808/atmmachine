//
//  CashWithdrawalViewController.swift
//  MachineTestQ2
//
//  Created by Student P_08 on 02/08/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class CashWithdrawalViewController: UIViewController
{

    @IBOutlet weak var AmountW: UITextField!
    @IBOutlet weak var PinW: UITextField!
    @IBOutlet weak var MobileW: UITextField!

    var Money = [String]()
    var Amount:Int!
    var Temp:Int!
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func SubmitW(_ sender: UIButton)
    {
            let selectw = "select * from ATMTable where Pin = '\(PinW.text!)'and Mobile = '\(MobileW.text!)' "
        DBWrapper.sharedObj.selectAllTask(query: selectw)
        if DBWrapper.sharedObj.ATMArrayData.count > 0
        {
            Money = DBWrapper.sharedObj.ATMArrayData
            Amount = Int(Money[3])
            print(Amount)
            showSimpleAlert()
            
        }
        
        let tm = Int(AmountW.text!)
       Temp = Amount - tm!

       let updatew = "update ATMTable set Amount = '\(Temp!)' where Mobile = '\(MobileW.text!)' "
        let isSuccess = DBWrapper.sharedObj.executeQuery(query: updatew)
        if isSuccess
        {
            print("Update Transation:Success")
        }
        else
        {
            print("Failed")
        }
    }
    
    
    func showSimpleAlert()
    {
        let alert = UIAlertController(title: "Transation", message: "Transation complete successfull",         preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok",
                                      style: UIAlertActionStyle.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func CancleW(_ sender: UIButton)
    {
        AmountW.text = ""
        PinW.text = ""
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

    
}
