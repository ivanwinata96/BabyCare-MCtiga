//
//  ProfilDataVC.swift
//  BabyCare-MC3
//
//  Created by Muhammad Syabran on 16/11/20.
//  Copyright © 2020 Ivan Winata. All rights reserved.
//

import UIKit

class ProfilDataVC: ViewController {
    
    @IBOutlet weak var namaIbuLabel: UILabel!
    @IBOutlet weak var estimasiLahirBayiLabel: UILabel!
    @IBOutlet weak var tglLahirLabel: UILabel!
    
    var namaIbu = String()
    var estimasiLahir = String()
    var tanggalLahir = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnTutupTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
