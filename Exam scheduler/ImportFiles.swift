//
//  ImportFiles.swift
//  Exam scheduler
//
//  Created by Uyen Dinh on 11/4/18.
//  Copyright © 2018 Uyen Dinh. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component");
        assert(green >= 0 && green <= 255, "Invalid green component");
        assert(blue >= 0 && blue <= 255, "Invalid blue component");
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0);
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}

class ImportFiles: UIViewController {


    @IBOutlet weak var importButton: UIButton!
    @IBOutlet weak var uploadButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        importButton.layer.borderWidth = 2;
        importButton.layer.cornerRadius = 10;
        importButton.layer.borderColor = UIColor.init(netHex: 0x185FD1).cgColor;

        
        uploadButton.layer.borderWidth = 2;
        uploadButton.layer.cornerRadius = 10;
        uploadButton.layer.borderColor = UIColor.init(netHex: 0x185FD1).cgColor;
        
        
        cancelButton.layer.borderWidth = 2;
        cancelButton.layer.cornerRadius = 10;
        cancelButton.layer.borderColor = UIColor.init(netHex: 0x185FD1).cgColor;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
