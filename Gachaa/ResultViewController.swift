//
//  ResultViewController.swift
//  Gachaa
//
//  Created by 中井日向子 on 2022/08/25.
//

import UIKit

class ResultViewController: UIViewController {
    var number:Int!
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var monsterimage:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        number = Int.random(in:0...9)
        if number == 9{
            image.image = UIImage(named: "bg_gold")
            monsterimage.image = UIImage(named: "monster010")
            } else if number > 3 {
            image.image = UIImage(named: "bg_red")
            monsterimage.image = UIImage(named: "monster006")
            } else{
                image.image = UIImage(named: "bg_blue")
                monsterimage.image = UIImage(named: "monster003")
            }


    }
    @IBAction func backbutton(){
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
