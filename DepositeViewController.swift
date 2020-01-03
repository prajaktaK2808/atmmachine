//
//  DepositeViewController.swift
//  MachineTestQ2
//
//  Created by Student P_08 on 02/08/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class DepositeViewController: UIViewController
{

    @IBOutlet weak var AcName: UITextField!
    @IBOutlet weak var Accountno: UITextField!
    @IBOutlet weak var BankName: UITextField!
    @IBOutlet weak var Amount: UITextField!
    @IBOutlet weak var PinNumber: UITextField!
    @IBOutlet weak var MobileNumber: UITextField!
    
    
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    @IBAction func SaveData(_ sender: UIButton)
    {
        let insert = "insert into ATMTable(Name,Account,Bank,Amount,Pin,Mobile)values('\(AcName.text!)','\(Accountno.text!)','\(BankName.text!)','\(Amount.text!)','\(PinNumber.text!)','\(MobileNumber.text!)')"
        let isSuccess = DBWrapper.sharedObj.executeQuery(query: insert)
        if isSuccess
        {
            print("insert:Success")
            
            navigationController?.popViewController(animated: true)
        }
    }
    @IBAction func CancleData(_ sender: UIButton)
    {
        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
