//
//  BalInquiryViewController.swift
//  MachineTestQ2
//
//  Created by Student P_08 on 02/08/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class BalInquiryViewController: UIViewController
{
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var AccountNo: UILabel!
    @IBOutlet weak var Amount: UILabel!
    @IBOutlet weak var Name1: UILabel!
    @IBOutlet weak var AccountNo1: UILabel!
    @IBOutlet weak var Amount1: UILabel!
    @IBOutlet weak var Message: UILabel!
    @IBOutlet weak var PinNumberB: UITextField!
    @IBOutlet weak var MobileNumberB: UITextField!
    
    var ATMDataArray = [String]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        Name.isHidden = true
        AccountNo.isHidden = true
        Amount.isHidden = true
        Name1.isHidden = true
        AccountNo1.isHidden = true
        Amount1.isHidden  = true
        Message.isHidden = true
        // Do any additional setup after loading the view.
    }

    
    @IBAction func SubmitB(_ sender: UIButton)
    {
    
       let select = "select * from ATMTable where Pin = '\(PinNumberB.text!)' and Mobile ='\(MobileNumberB.text!)'"
            DBWrapper.sharedObj.selectAllTask(query: select)
            if DBWrapper.sharedObj.ATMArrayData.count > 0
            {
                self.ATMDataArray = DBWrapper.sharedObj.ATMArrayData
                print(self.ATMDataArray)
            
                let nm = ATMDataArray[0]
                let ac = ATMDataArray[1]
                let amt = ATMDataArray[3]
                Name1.text = nm
                AccountNo1.text = ac
                Amount1.text = amt
            
                Name1.isHidden = false
                Name.isHidden = false
                AccountNo.isHidden = false
                AccountNo1.isHidden = false
                Amount.isHidden = false
                Amount1.isHidden = false
               // Message.isHidden = true
            }
            else
            {
               // Message.isHidden = false
               // Message.text = "Invalid"
               // Message.textColor = .red
                
                
                
                
                Name.isHidden = true
                AccountNo.isHidden = true
                Amount.isHidden = true
                Name1.isHidden = true
                AccountNo1.isHidden = true
                Amount1.isHidden  = true
                Message.isHidden = true
                showSimpleAlert()

            }
        
    }
    
    
    func showSimpleAlert()
    {
        let alert = UIAlertController(title: "Invalid info", message: "plzzz enter valid inforamtion",         preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok",
                                      style: UIAlertActionStyle.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func CancleB(_ sender: UIButton)
    {
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
