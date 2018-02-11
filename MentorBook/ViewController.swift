//
//  ViewController.swift
//  MentorBook
//
//  Created by 伊藤 遥 on 2018/02/11.
//  Copyright © 2018年 Haruka Ito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょう", course: "Unity", imageName: "ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "WebS,WebD", imageName: "taithi.JPG"))
        
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }

    @IBAction func prev() {
        if index-1 >= 0 {
            index -= 1
            setUI()
        }
    }

    @IBAction func next() {
        if index+1 <= mentorArray.count-1 {
        index += 1
        setUI()
        }
    }
}

