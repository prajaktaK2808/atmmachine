//
//  ViewController.swift
//  MachineTestQ2
//
//  Created by Student P_08 on 02/08/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
     
    }

    
    
    @IBAction func Deposite(_ sender: UIButton)
    {
        let deposite = self.storyboard?.instantiateViewController(withIdentifier: "DepositeViewController") as! DepositeViewController
        navigationController?.pushViewController(deposite, animated: true)
    }
    
    @IBAction func CashWithdrawal(_ sender: UIButton)
    {
        let cashwithdrawal = self.storyboard?.instantiateViewController(withIdentifier: "CashWithdrawalViewController") as! CashWithdrawalViewController
        navigationController?.pushViewController(cashwithdrawal, animated: true)
    }
    
    
    @IBAction func PinChange(_ sender: UIButton)
    {
        let pinchange = self.storyboard?.instantiateViewController(withIdentifier: "PinChangeViewController") as! PinChangeViewController
        navigationController?.pushViewController(pinchange, animated: true)
    }
    
    
    @IBAction func BalanceInquiry(_ sender: UIButton)
    {
        let balinquiry = self.storyboard?.instantiateViewController(withIdentifier: "BalInquiryViewController") as! BalInquiryViewController
        navigationController?.pushViewController(balinquiry, animated: true)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

