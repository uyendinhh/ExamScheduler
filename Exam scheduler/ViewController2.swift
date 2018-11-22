//
//  ViewController2.swift
//  Exam scheduler
//
//  Created by Uyen Dinh on 11/4/18.
//  Copyright © 2018 Uyen Dinh. All rights reserved.
//


import UIKit
import MobileCoreServices
import QuartzCore
class ViewController2: UIViewController {
    
    let imagePicker = UIImagePickerController()
    

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        imageView.layer.cornerRadius = imageView.frame.size.width/2
        imageView.layer.masksToBounds = true
    }
//    @IBAction func openCamAction(_ sender: Any) {
//        openCamera()
//        
//    }
//    func openCamera() {
//        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
//            print("This device doesn't have a camera.")
//            return
//        }
//
//        imagePicker.sourceType = .camera
//        imagePicker.cameraDevice = .rear
//        //        imagePicker.mediaTypes = [kUTTypeImage as String]
//        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for:.camera)!
//        imagePicker.delegate = (self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate)
//
//        present(imagePicker, animated: true)
//    }
    
    @IBAction func openLibraryAction(_ sender: Any) {
        openPhotoLibrary()
        
    }
    func openPhotoLibrary() {
        guard UIImagePickerController.isSourceTypeAvailable(.photoLibrary) else {
            print("can't open photo library")
            return
        }
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = (self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate)
        
        present(imagePicker, animated: true)
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        defer {
            picker.dismiss(animated: true)
        }
        
        print(info)
        // get the image
        guard (info[UIImagePickerControllerOriginalImage] as? UIImage) != nil else {
            return
        }
        
        // do something with it
//        imageView.image = image
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        defer {
            picker.dismiss(animated: true)
        }
    
        print("did cancel")
    }
}

